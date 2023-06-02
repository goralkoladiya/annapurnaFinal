import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../../components/constants.dart';
import 'CropDS AdhaarCrad.dart';

class Add2SAadhaar extends StatefulWidget {
  const Add2SAadhaar({Key? key}) : super(key: key);

  @override
  State<Add2SAadhaar> createState() => _Add2SAadhaarState();
}

class _Add2SAadhaarState extends State<Add2SAadhaar> with WidgetsBindingObserver {

  List<CameraDescription> _cameras = [];
  CameraController? controller;
  bool _initializing = true;
  bool data = false;
  XFile? images;

  getcamera() async
  {
    _cameras = await availableCameras();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {
        data = true;
      });
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:
          // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_initializing) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      controller?.dispose();
    } else if (state == AppLifecycleState.resumed) {
      if (controller != null) {
        _setCurrentCamera(controller!.description);
      }
    }
  }

  Future<void> _setCurrentCamera(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller?.dispose();
    }
    controller = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      enableAudio: false,
    );

    // If the controller is updated then update the UI.
    controller!.addListener(() {
      if (mounted) setState(() {});

      if (controller!.value.hasError) {
        print('Camera error ${controller!.value.errorDescription}');
      }
    });

    try {
      await controller!.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }
  void _switchCamera() {
    if (controller != null && !controller!.value.isRecordingVideo) {
      CameraLensDirection direction = controller!.description.lensDirection;
      CameraLensDirection required = direction == CameraLensDirection.front
          ? CameraLensDirection.back
          : CameraLensDirection.front;
      for (CameraDescription cameraDescription in _cameras) {
        if (cameraDescription.lensDirection == required) {
          _setCurrentCamera(cameraDescription);
          return;
        }
      }
    }
  }

  void _showCameraException(CameraException e) {
    String errorText = 'Error: ${e.code}\nError Message: ${e.description}';
    print(errorText);
  }

  permission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.camera,
        Permission.storage,
      ].request();
    }
    else
    {
      getcamera();
    }
  }
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    permission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return data ? Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: grey.shade400.withOpacity(0.8),elevation: 0,
        title: Text("Capture Aadhaar Card",style: myTextStyle700.copyWith(color: white),),
      ),

      bottomSheet:  Container(
          height: 16.h,width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Single Side Aadhaar Card",style: myTextstye ),
              ),
              Text("Make sure your card details are clear to read",style: myTextStyle600),
              SizedBox(height: 1.h,),
              ElevatedButton(onPressed: () async {
                images = await controller!.takePicture();
                if (images != null) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return Crop2SAadhaar(images);
                  },));
                }
              }, child: Text("Capture",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500),),
                style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(50.w, 6.h)),),
            ],
          )
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(height:double.infinity,width: double.infinity,child: CameraPreview(controller!)),
            Container(height:double.infinity,width: double.infinity,color: Color.fromRGBO(0, 0, 0, 0.7),),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h,left: 1.h,right: 1.h),height:30.h,width: 100.w,
                decoration: BoxDecoration(
                  border: Border.all(color: lightGreen,width: 5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CameraPreview(controller!),
                  ),
                ),),
            ),
          ],
        ),
      ),
    ):SizedBox();
  }
}
