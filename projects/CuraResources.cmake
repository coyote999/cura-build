ExternalProject_Add(CuraResources
    GIT_REPOSITORY https://github.com/BCN3D/CuraResources
    GIT_TAG origin/master
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
)

SetProjectDependencies(TARGET CuraResources DEPENDS Cura)