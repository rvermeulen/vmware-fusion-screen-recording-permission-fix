# README

This project aims to fix the missing *Screen Recording* permisison request for VMware Fusion 10. 

It injects a dynamic library that that invokes an API requiring the *Screen Recording* permission and thus triggering the permission modal
in the context of VMware Fusion.

Based on the following resources:

- https://stackoverflow.com/questions/57957198/how-to-trigger-screen-recording-permission-system-modal-dialog-on-macos-catalina
- https://theevilbit.github.io/posts/dyld_insert_libraries_dylib_injection_in_macos_osx_deep_dive/
