package com.nagarro.libraryclients.services;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nagarro.libraryclients.controllers.ViewLibraryController;
import com.nagarro.libraryclients.entity.BooksEntity;

@Service
public class DeleteServices {

	private RestTemplate restTemplate = new RestTemplate();

	final String URI_Users = "http://localhost:8082/librarymanagement/v1/delete/";

	public void deletingbooks(int bookcode) {

		try {
			HttpEntity<Integer> requestUpdate = new HttpEntity<>(bookcode);
			ResponseEntity<BooksEntity> book = restTemplate.exchange(URI_Users + bookcode, HttpMethod.DELETE,
					requestUpdate, BooksEntity.class);

			System.out.println(book);

		} catch (Exception e) {
			e.printStackTrace();
		}
		ViewLibraryController view = new ViewLibraryController();
		view.getData();

	}
}
