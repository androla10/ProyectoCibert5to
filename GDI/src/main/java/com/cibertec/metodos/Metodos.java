package com.cibertec.metodos;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class Metodos {
	public static void guardarArchivo(File file, String filename, String filesDirectory) throws IOException {
		FileInputStream in = null;
		FileOutputStream out = null;

		File dir = new File(filesDirectory);
		if (!dir.exists())
			dir.mkdirs();

		String targetPath = dir.getPath() + File.separator + filename;
		System.out.println("source file path ::" + file.getAbsolutePath());
		System.out.println("saving file to ::" + targetPath);
		File destinationFile = new File(targetPath);
		try {
			in = new FileInputStream(file);
			out = new FileOutputStream(destinationFile);
			int c;
			while ((c = in.read()) != -1) {
				out.write(c);
			}

		} finally {
			if (in != null) {
				in.close();
			}
			if (out != null) {
				out.close();
			}
		}

	}
	public static FileInputStream ImagenParaGuardarSql(File file, String filename) throws IOException {
		FileInputStream in = null;
		FileOutputStream out = null;

		try {
			in = new FileInputStream(file);
			int c;
			while ((c = in.read()) != -1) {
				System.out.println(c);
				out.write(c);
			}
			System.out.println(in);
			return in;

		} finally {
			if (in != null) {
				in.close();
			}
			if (out != null) {
				out.close();
			}
		}

	}
}
