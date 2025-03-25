allprojects {
    repositories {
        google()  // Repositorio para dependencias de Firebase y Google Services
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

buildscript {
    repositories {
        google()  // Importante: Agrega esto
        mavenCentral()
    }
    dependencies {
        classpath("com.android.tools.build:gradle:8.1.1")  // Ajusta la versión si es necesario
        classpath("com.google.gms:google-services:4.4.2")  // Complemento para Firebase
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

