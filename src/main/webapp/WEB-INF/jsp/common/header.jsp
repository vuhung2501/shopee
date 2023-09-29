<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>shopee</title>
	<link rel="stylesheet" href="/css/main.css" type="text/css" />
	<link rel="stylesheet" href="/icon/fontawesome-free-6.2.0-web/css/all.css"/>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,300&display=swap"/>
</head>

<body>
	<div class="app">
		<header class="header">
			 <nav class="navbar">
                    <ul class="navbar__list">
                        <li class="navbar__list-item">
                            Vào cửa hàng trên ứng dụng HungPee                            
                        </li>
                        <li class="navbar__list-item">
                            <span class="navbar__list-item-no-pointer">Kết nối</span>
                            <a href="" class="navbar__list-icon-link">
                                <i class="navbar__list-item-icon fa-brands fa-facebook"></i>
                            </a>
                            <a href="" class="navbar__list-icon-link">
                                 <i class="navbar__list-item-icon fa-brands fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
    
                    <ul class="navbar__list">
                        <li class="navbar__list-item  header__notify--has--notify">
                            <a href="" class="navbar__list-item-link">
                                <i class="navbar__list-item-icon fa-regular fa-bell"></i>
                                Thông báo
                            </a>                            
                        </li>
                        <li class="navbar__list-item">
                            <a href="" class="navbar__list-item-link">
                                <i class="navbar__list-item-icon fa-regular fa-circle-question"></i>
                                Trợ giúp
                            </a>
                        </li>
                        <li class="navbar__list-item navbar__list-item-user">
                            <img src="../img/avatar.jpg" alt="" class="navbar__list-user-img">
                            <span class="navbar__list-user-name">Hùng Vũ</span>
                            <ul class="navbar__list-user-menu">
                                <li class="navbar__list-user-item">
                                    <a href="">Tài khoản của tôi</a>
                                </li>
                                     <li class="navbar__list-user-item">
                                    <a href="">Địa chỉ của tôi</a>
                                </li>
                                <li class="navbar__list-user-item">
                                    <a href="">Đơn mua</a>
                                </li>
                                <li class="navbar__list-user-item navbar__list-user--separate">
                                    <a href="">Đăng xuất</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- Header with search --> 
                <div class="header-with-search">
                    
                    <div class="header__logo hide-on-tablet">
                        <a href="/" class="header__logo-link">
                            <svg viewBox="0 0 192 65" class="header__logo-img">
                                <img src="../img/iconshop.png" alt="" class="iconshop">
                            </svg>
                        </a>
                    </div>

                    <div class="header__search">
                        <div class="header__search-wrap">
                            <input type="text" class="header__search-input" placeholder="Nhập để tìm kiếm sản phẩm">                           
                        </div>
                        <div class="header__search-select">
                            <span class="header__search-select-label">Trong Shop</span>
                            <i class=" header__search-select-icon fa-solid fa-chevron-down"></i>
                            <ul class="header__search-option">
                                <li class="header__search-option-item header__search-option-item--active">
                                    <span>Trong Shop</span>
                                    <i class="fa-solid fa-check"></i>
                                </li><li class="header__search-option-item">
                                    <span>Ngoài Shop</span>
                                    <i class="fa-solid fa-check"></i>
                                </li>
                            </ul>
                        </div>
                        <button class="header__search-btn">
                            <i class="header__search-btn-icon fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>

                    <!-- Cart layuot -->
                    <div class="header__cart">		
                           <i class="header__cart-icon fas fa-cart-shopping"></i>                       
                    </div>
                </div>
            </div>            
		</header>
	</div>
	
	<div class="container">
	
