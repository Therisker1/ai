@echo off
setlocal

rem ##########################################################################
rem
rem  Gradle start up script for Windows
rem
rem ##########################################################################

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

rem Setup JAVA_HOME if not set
if not defined JAVA_HOME (
  rem Try to get JAVA_HOME from registry
  for /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\JavaSoft\Java Development Kit" /v CurrentVersion 2^>nul') do set CURRENT_JDK_VERSION=%%j
  if defined CURRENT_JDK_VERSION (
    for /f "tokens=2*" %%i in ('reg query "HKLM\SOFTWARE\JavaSoft\Java Development Kit\%CURRENT_JDK_VERSION%" /v JavaHome 2^>nul') do set JAVA_HOME=%%j
  )
)

if not defined JAVA_HOME (
  echo ERROR: JAVA_HOME is not set and no Java could be found in the registry.
  echo Please set the JAVA_HOME environment variable to point to your Java installation.
  exit /b 1
)

set DEFAULT_JVM_OPTS=

rem Setup GRADLE_OPTS and JAVA_OPTS if needed
set JVM_OPTS=%DEFAULT_JVM_OPTS% %GRADLE_OPTS% %JAVA_OPTS%

set CLASSPATH=%APP_HOME%gradle\wrapper\gradle-wrapper.jar

rem Execute Gradle Wrapper main class
"%JAVA_HOME%\bin\java" %JVM_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

endlocal
