package com.p2p.util;

import java.io.File;

import org.apache.commons.io.FileUtils;

public class UploadFile {

	public static File Upload(File uploadFile, String uploadFileFileName,String targetDirectory)throws Exception {
		File target = new File(targetDirectory, uploadFileFileName);
		// 如果文件已经存在，则删除原有文件
		if (target.exists()) {
			target.delete();
		}
		// 复制file对象，实现上传
		FileUtils.copyFile(uploadFile, target);
		return target;
	}
}
