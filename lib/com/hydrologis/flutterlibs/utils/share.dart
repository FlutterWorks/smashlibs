part of smashlibs;
/*
 * Copyright (c) 2019-2020. Antonello Andrea (www.hydrologis.com). All rights reserved.
 * Use of this source code is governed by a GPL3 license that can be
 * found in the LICENSE file.
 */

class ShareHandler {
  static Future<void> shareText(String text, {String title: ''}) async {
    await ShareExtend.share(text, "text");
  }

  static Future<void> shareImage(String text, var imageData) async {
    Directory cacheFolder = await Workspace.getCacheFolder();
    var outPath = FileUtilities.joinPaths(cacheFolder.path,
        "smash_tmp_share_${TimeUtilities.DATE_TS_FORMATTER}.jpg");

    FileUtilities.writeBytesToFile(outPath, imageData);

    await ShareExtend.share(outPath, "image");
  }


  // TODO Move to SMASH
  // static Future<void> shareProject(BuildContext context) async {
  //   ProjectState projectState =
  //       Provider.of<ProjectState>(context, listen: false);
  //   if (projectState.projectPath != null) {
  //     File projectFile = File("${projectState.projectPath}");
  //     if (projectFile.existsSync()) {
  //       await ShareExtend.share(projectFile.path, "file");
  //     }
  //   }
  // }
}
