

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<%@ page import="java.util.*"%>
<%@ page
	import="com.nagarro.libraryclients.controllers.ViewLibraryController"%>
<%@ page import="com.nagarro.libraryclients.entity.BooksEntity"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">



<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
.button {
	width: 100px;
	height: 20px;
	background: #cc0000;
	padding: 10px;
	text-align: center;
	border-radius: 5px;
	color: white;
	font-weight: bold;
	line-height: 25px;
	text-decoration: none;
}
</style>



</head>
<body>

	<header>
		<div align="right" class="p-3 mb-2 bg-info text-white">
			<h6>Welcome User</h6>
			<a align="right" class="button" href="Home.jsp">Logout</a>
		</div>

	</header>

	<div class="p-3 mb-2 bg-dark text-white">
		<div align="center" class="p-3 mb-2 bg-danger text-white">
			<h2>Book Listing</h2>

		</div>
		<div align="right">
			<button style="font-size: 24px" onclick="location.href='addBook.jsp'">Add
				a Book</button>
		</div>
		<table border="5px" style="width: 1000px" height="300">
			<thead align="center">
				<tr>

					<th>Book-Code</th>
					<th>Book Name</th>
					<th>Author</th>
					<th>DataAdded</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>

			<%
			ViewLibraryController view = new ViewLibraryController();
			view.getData();
			for (BooksEntity i : ViewLibraryController.bookslist) {
			%>
			<tbody>
				<tr>
					<td align="center"><%=i.getBookCode()%></td>
					<td align="center"><%=i.getBookName()%></td>
					<td align="center"><%=i.getAuthor()%></td>
					<td align="center"><%=i.getAddDate()%></td>
					<td align="center"><button style="font-size: 24px"
							onclick="location.href='editBook.jsp?bookcode=<%=i.getBookCode()%>&bookname=<%=i.getBookName()%>&author=<%=i.getAuthor()%>&adddate=<%=i.getAddDate()%>';">Edit</button></td>
					<td align="center">
						<div class="p-1">

							<form action="delete/<%=i.getBookCode()%>" method="get"
								id="delete?bookscode<%=i.getBookCode()%>">


								<button type="submit"
									form="delete?bookscode<%=i.getBookCode()%>"
									class="btn btn-outline-danger btn-sm">Delete</button>

							</form>
						</div>
					</td>

				</tr>
			</tbody>
			<%
			}
			%>

		</table>
	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<footer>
		<div class="p-3 mb-2 bg-info text-white"></div>
	</footer>
</body>
</html>