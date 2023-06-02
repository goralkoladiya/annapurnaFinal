import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../components/constants.dart';
import 'Confirm VoterID.dart';

class VoterIdCard extends StatefulWidget {
  const VoterIdCard({Key? key}) : super(key: key);

  @override
  State<VoterIdCard> createState() => _VoterIdCardState();
}

class _VoterIdCardState extends State<VoterIdCard> with WidgetsBindingObserver {

  List<CameraDescription> _cameras = [];
  CameraController? controller;
  bool _initializing = true;
  bool data = false;
  bool temp = false;
  XFile? images;

  getcamera() async
  {
    _cameras = await availableCameras();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      // _initializing = false;
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
    // if (!controller!.value.isInitialized) {
    //   return Container();
    // }
    return data?Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: grey.shade400.withOpacity(0.8),elevation: 0,
        title: Text("Capture Voter ID",style: myTextStyle700.copyWith(color: white),),
      ),

      bottomSheet:  Container(
          height: 16.h,width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Front of your voter ID",style: myTextstye ),
              ),
              Text("Make sure your card details are clear to read",style: myTextStyle600),
              SizedBox(height: 1.h,),
              ElevatedButton(onPressed: () async {
                images = await controller!.takePicture();
                 print("object11==$images");
                // if (images != null) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return ConfirmVoterIdCard(images);
                  },));
                  // await controller!.dispose();
                // }
              }, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt),
                  SizedBox(width: 2.w,),
                  Text("Capture",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
                style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(50.w, 6.h)),),
            ],
          )
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(height:double.infinity,width: double.infinity,color: grey.shade400.withOpacity(0.8),),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h)
                ,height:60.h,width: 80.w,
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
