package com.kurly.api;

import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.service.ImageService;

@RestController
public class ImageAPIController {
	@Autowired
	ImageService service;
	@GetMapping("/images/{uri}")
	public ResponseEntity<Resource> getImageFile(@PathVariable String uri, HttpServletRequest request) throws Exception {
		Path imageLocation = Paths.get("/kurly/product_imgs");
		String realImageName = service.selectRealImageName(uri);
		Path imageFilePath = imageLocation.resolve(realImageName).normalize();
		
		Resource resource = new UrlResource(imageFilePath.toUri());
		String fileType = null;
		fileType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		if(fileType == null) {
			fileType = "application/octet-stream";
		}
		
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(fileType))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename*=\""+resource.getFilename()+"\"")
				.body(resource);
	}
}




