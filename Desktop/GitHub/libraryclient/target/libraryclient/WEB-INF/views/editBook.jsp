<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<header>
<div class="p-3 mb-2 bg-info text-white"><h6> Edit Window</h6></div>
</header> <div class="p-3 mb-2 bg-dark text-white">
<div class="container mt-5">
<div class="p-3 mb-2 bg-danger text-white"><h2 align="center">Edit Book Details</h2></div>
<br>
<form action="edit">
<div class="form-group">
<label for="bcode">Book Code</label>
<input type="text" class="form-control" id="bcode" aria-describedby="bcode" name="bcode" value='<%=request.getParameter("bookcode")%>'>
</div>
<div class="form-group">
<label for="bname">Book Name</label>
<input type="text" class="form-control" id="bname" value='<%=request.getParameter("bookname")%>' name="bname">
</div>
<div class="form-group">
<label for="author">Author</label>
<div class="input-group mb-3">
<select class="custom-select" id="inputGroupSelect02" name='select'>
<option selected>Choose Author</option>
<option value="1">Robert Cecil</option>
<option value="2">Andy Hunt</option>
<option value="3">Erich Gamma</option>
<option value="4">E.M.Forster</option>
</select>
</div>
</div> <div class="form-group">
<label for="date">Added On</label>
<input type="text" class="form-control" id="date" aria-describedby="date" name="date" value='<%=request.getParameter("adddate")%>' >
</div>
<button type="submit" class="btn btn-success">Submit</button>
<button type="reset" class="btn btn-success">Cancel</button>
</form></div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<footer>
<div class="p-3 mb-2 bg-info text-white"></div>
</footer>
</body>
</html>

