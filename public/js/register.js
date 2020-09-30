/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 1);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/register.js":
/*!**********************************!*\
  !*** ./resources/js/register.js ***!
  \**********************************/
/*! no static exports found */
/***/ (function(module, exports) {

$(function () {
  displayData();
  $('#submitButton').on('click', function (e) {
    var _this = this;

    e.preventDefault();
    $.ajax({
      type: "POST",
      url: "/addcontacts",
      data: $('#addform').serialize(),
      success: function success(response) {
        displayData();
        $('#myModal').modal('hide');
        alert("Data saved");
      },
      error: function error(_error) {
        console.log(_error);
        alert("Data Not Saved");
      }
    });
  });

  function displayData() {
    $('#contacts_table').DataTable({
      destroy: true,
      processing: true,
      serverSide: true,
      ajax: {
        url: "/contacts"
      },
      columns: [{
        data: 'image',
        name: 'image'
      }, {
        data: 'id',
        name: 'id'
      }, {
        data: 'name',
        name: 'name'
      }, {
        data: 'email',
        name: 'email',
        orderable: false
      }, {
        data: 'contact',
        name: 'contact',
        orderable: false
      }, {
        data: 'address',
        name: 'address',
        orderable: false
      }, {
        data: 'action',
        name: 'action',
        orderable: false
      }, {
        data: 'logs',
        name: 'logs',
        orderable: false
      }]
    });
  }

  var user_id;
  $(document).on('click', '.delete', function () {
    user_id = $(this).attr('id');
    $('#confirmModal').modal('show');
  });
  $('#ok_button').on('click', function () {
    $.ajax({
      url: "contacts/destroy/" + user_id,
      success: function success(data) {
        setTimeout(function () {
          displayData();
          $('#confirmModal').modal('hide');
          $('#user_table').DataTable().ajax.reload();
        }, 2000);
      },
      error: function error(_error2) {
        console.log(_error2);
        alert("Data Not deleted");
      }
    });
  });
  $(document).on('click', '.edit', function () {
    var id = $(this).attr('id');
    $('#form_result').html('');
    $('#myeditModal').modal('show');
    $tr = $(this).closest('tr');
    var data = $tr.children("td").map(function () {
      return $(this).text();
    }).get();
    console.log(data);
    $('#id').val(data[1]);
    $('#name').val(data[2]);
    $('#email').val(data[3]);
    $('#contact').val(data[4]);
    $('#address').val(data[5]);
  });
  $('#editform').on('submit', function (e) {
    e.preventDefault();
    var id = $('#id').val();
    $.ajax({
      type: "PUT",
      url: "/contacts/update/" + id,
      headers: {
        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
      },
      datatype: 'json',
      data: $('#editform').serialize(),
      success: function success(response) {
        displayData();
        console.log(response);
        $('#myeditModal').modal('hide');
      },
      error: function error(_error3) {
        console.log(_error3);
        alert("Not updated");
      }
    });
  });
});

/***/ }),

/***/ 1:
/*!****************************************!*\
  !*** multi ./resources/js/register.js ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! C:\xamppl\htdocs\blog\resources\js\register.js */"./resources/js/register.js");


/***/ })

/******/ });