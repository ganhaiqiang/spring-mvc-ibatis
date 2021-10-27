package com.demo.common;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

public class DownloadUtils {
	private static final String UTF8 = "UTF-8";
	private static final String ISO_8859_1 = "ISO-8859-1";

	private static final String[] IE_FLAG = { "MSIE", "Trident", "Edge" };

	/**
	 * 下载文件名乱码处理
	 * 
	 * @param request
	 * @param fileNames
	 * @return
	 */
	public static String processFileName(HttpServletRequest request, String fileNames) {
		try {
			String agent = request.getHeader("USER-AGENT");
			if (agent != null) {
				for (String signal : IE_FLAG) {
					if (agent.contains(signal)) {
						return URLEncoder.encode(fileNames, UTF8);
					}
				}
				if (agent.indexOf("Mozilla") != -1) {
					return new String(fileNames.getBytes(UTF8), ISO_8859_1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileNames;
	}
}
