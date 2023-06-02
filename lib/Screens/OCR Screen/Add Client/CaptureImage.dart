import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../components/constants.dart';
import 'Add Client.dart';


class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {

   List<CameraDescription> _cameras = [];
   CameraController? controller;

  bool temp = false;
  bool data=false;
  XFile? image;
  permission() async {

    var status = await Permission.camera.status;
    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.camera,
        Permission.storage,
      ].request();
    }
  }
  getcamera()async
  {
    _cameras = await availableCameras();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {
        data=true;
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
  void initState() {
    permission();
    getcamera();
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (!controller!.value.isInitialized) {
    //   return Container();
    // }
    return data? Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("Capture Client photo",style: myTextStyle700.copyWith(color: white),),
      ),

      bottomSheet:  Container(
          height: 15.h,width: double.infinity,
          alignment: Alignment.center,
          child: ElevatedButton(onPressed: () async {
            permission();
            image = await controller!.takePicture();
            if (image != null) {
              temp = true;
              setState(() {});
            }
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return AddClient(image);
            },));
          }, child: Text("Capture",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500),),
            style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(50.w, 6.h)),)
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(height:double.infinity,width: double.infinity,child: CameraPreview(controller!)),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 25.h)
                ,height:250,width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: lightGreen,width: 5),
                  borderRadius: BorderRadius.circular(125),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CameraPreview(controller!),
                  ),
                ),),
            ),
          ],
        ),
      ),
    ) : SizedBox();
  }
}
