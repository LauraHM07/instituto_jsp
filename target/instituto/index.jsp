<%@ page language="java" contentType="text/html" %>

<%@page import="com.laura.instituto.model.Alumno"%>
<%@page import="com.laura.instituto.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%

  Alumno alumno = new Alumno();
  alumno.setNombre("Laura");
  alumno.setApellidos("Haro");
  alumno.setDni("1111");
  alumno.setDireccion("Calle 1");
  alumno.setEmail("laura@gmail.com");


  Alumno alumno2 = new Alumno();
  alumno2.setNombre("Juan");
  alumno2.setApellidos("xxxx");
  alumno2.setDni("2222");
  alumno2.setDireccion("Calle 2");
  alumno2.setEmail("juan@gmail.com");

  Alumno alumno3 = new Alumno();
  alumno3.setNombre("Pepe");
  alumno3.setApellidos("yyyy");
  alumno3.setDni("3333");
  alumno3.setDireccion("Calle 3");
  alumno3.setEmail("pepe@gmail.com");

  List<Alumno> alumnos = new ArrayList<Alumno>();
  alumnos.add(alumno);
  alumnos.add(alumno2);
  alumnos.add(alumno3);

  session.setAttribute("alumnos", alumnos);

  Asignatura asignatura = new Asignatura();
  asignatura.setCodigo("1234");
  asignatura.setDescripcion("hihi");

  Asignatura asignatura2 = new Asignatura();
  asignatura2.setCodigo("5678");
  asignatura2.setDescripcion("hehe");

  Asignatura asignatura3 = new Asignatura();
  asignatura3.setCodigo("9012");
  asignatura3.setDescripcion("haha");

  List<Asignatura> asignaturas = new ArrayList<Asignatura>();
  asignaturas.add(asignatura);
  asignaturas.add(asignatura2);
  asignaturas.add(asignatura3);

  session.setAttribute("asignaturas", asignaturas);

%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Instituto</title>
</head>
<body>

<h1>Menu principal</h1>
<p><a href="alumnos/alumnos.jsp">Alumnos</a></p>
<p><a href="asignaturas/asignaturas.jsp">Asignaturas</a></p>