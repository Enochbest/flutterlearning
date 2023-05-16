import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class PickerImagePage extends StatefulWidget {
  const PickerImagePage({Key? key}) : super(key: key);

  @override
  State<PickerImagePage> createState() => _PickerImagePageState();
}

class _PickerImagePageState extends State<PickerImagePage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFileDir;
  XFile? _videoFileDir;
  //配置播放视频
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  _takePhoto() async {
    XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.camera, maxWidth: 600, maxHeight: 600);
    if (pickedFile != null) {
      setState(() {
        _imageFileDir = pickedFile;
      });
    }
  }

  _initVideo(filePath) async{
    videoPlayerController = VideoPlayerController.file(filePath);
    await videoPlayerController.initialize();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio:videoPlayerController.value.aspectRatio,
        autoPlay: true,
        looping: true,
    );
  }


  _pickgallery() async{
    XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    print(pickedFile?.path);
    print('---------------------');
    _uploadImage(pickedFile != null? pickedFile.path : '');
    if (pickedFile != null) {
      setState(() {
        _imageFileDir = pickedFile;
      });
    }
  }
  
  _takeVideo() async{
    XFile? pickedFile = await _picker.pickVideo(source: ImageSource.camera);
    if (pickedFile != null) {
      await _initVideo(File(pickedFile.path));
      setState(() {
        _videoFileDir = pickedFile;
      });
    }
  }

  _pickVideo() async{
    XFile? pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _videoFileDir = pickedFile;
      });
    }
  }
  //上传图片
  _uploadImage( String imagePath) async{
    var formData = FormData.fromMap({
      'name':'wendux',
      'age':25,
      'file':await MultipartFile.fromFile(imagePath,filename: 'aaa.png')
    });
    var response = await Dio().post('https://jdmall.itying.com/imgupload', data: formData);
    print(response);
    print('------------');

  }
  @override
  void dispose() {
    // TODO: implement dispose
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('图片选择'),),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: _takePhoto, child: const Text('拍照')),
              ElevatedButton(onPressed: _pickgallery, child: const Text('图片选择')),
              _imageFileDir==null? const Text("选择图片...") : Image.file(File(_imageFileDir!.path)),
              ElevatedButton(onPressed: _takeVideo, child: const Text('拍摄视频')),
              ElevatedButton(onPressed: _pickVideo, child: const Text('手机选择视频')),
              _videoFileDir == null ? const Text("") : AspectRatio(
                aspectRatio:videoPlayerController.value.aspectRatio,
                child: Chewie(controller: chewieController),
              ),
            ],
          )
        ],
      ),
    );
  }
}
