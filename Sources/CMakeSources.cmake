# All of these will be set as PUBLIC sources to Acid
set(_temp_acid_headers
		Animations/AnimatedMesh.hpp
		Animations/Animation/Animation.hpp
		Animations/Animation/AnimationLoader.hpp
		Animations/Animation/JointTransform.hpp
		Animations/Animation/Keyframe.hpp
		Animations/Animator.hpp
		Animations/Geometry/GeometryLoader.hpp
		Animations/Geometry/VertexAnimated.hpp
		Animations/Skeleton/Joint.hpp
		Animations/Skeleton/SkeletonLoader.hpp
		Animations/Skin/SkinLoader.hpp
		Animations/Skin/VertexWeights.hpp
		Audio/Audio.hpp
		Audio/Flac/FlacSoundBuffer.hpp
		Audio/Mp3/Mp3SoundBuffer.hpp
		Audio/Ogg/OggSoundBuffer.hpp
		Audio/Opus/OpusSoundBuffer.hpp
		Audio/Sound.hpp
		Audio/SoundBuffer.hpp
		Audio/Wave/WaveSoundBuffer.hpp
		Bitmaps/Bitmap.hpp
		Bitmaps/Dng/DngBitmap.hpp
		Bitmaps/Exr/ExrBitmap.hpp
		Bitmaps/Jpg/JpgBitmap.hpp
		Bitmaps/Png/PngBitmap.hpp
		Devices/Instance.hpp
		Devices/Joysticks.hpp
		Devices/Keyboard.hpp
		Devices/LogicalDevice.hpp
		Devices/Monitor.hpp
		Devices/Mouse.hpp
		Devices/PhysicalDevice.hpp
		Devices/Surface.hpp
		Devices/Window.hpp
		Engine/App.hpp
		Engine/Engine.hpp
		Engine/Log.hpp
		Engine/Module.hpp
		Files/File.hpp
		Files/FileObserver.hpp
		Files/Files.hpp
		Files/Json/Json.hpp
		Files/Node.hpp
		Files/Node.inl
		Files/NodeConstView.hpp
		Files/NodeConstView.inl
		Files/NodeView.hpp
		Files/NodeView.inl
		Files/Xml/Xml.hpp
		Fonts/FontsSubrender.hpp
		Fonts/FontType.hpp
		Fonts/Text.hpp
		Gizmos/Gizmo.hpp
		Gizmos/Gizmos.hpp
		Gizmos/GizmosSubrender.hpp
		Gizmos/GizmoType.hpp
		Graphics/Buffers/Buffer.hpp
		Graphics/Buffers/InstanceBuffer.hpp
		Graphics/Buffers/PushHandler.hpp
		Graphics/Buffers/StorageBuffer.hpp
		Graphics/Buffers/StorageHandler.hpp
		Graphics/Buffers/UniformBuffer.hpp
		Graphics/Buffers/UniformHandler.hpp
		Graphics/Commands/CommandBuffer.hpp
		Graphics/Commands/CommandPool.hpp
		Graphics/Descriptors/Descriptor.hpp
		Graphics/Descriptors/DescriptorSet.hpp
		Graphics/Descriptors/DescriptorsHandler.hpp
		Graphics/Graphics.hpp
		Graphics/Images/Image.hpp
		Graphics/Images/Image2d.hpp
		Graphics/Images/Image2dArray.hpp
		Graphics/Images/ImageCube.hpp
		Graphics/Images/ImageDepth.hpp
		Graphics/Pipelines/Pipeline.hpp
		Graphics/Pipelines/PipelineCompute.hpp
		Graphics/Pipelines/PipelineGraphics.hpp
		Graphics/Pipelines/Shader.hpp
		Graphics/Renderer.hpp
		Graphics/Renderpass/Framebuffers.hpp
		Graphics/Renderpass/Renderpass.hpp
		Graphics/Renderpass/Swapchain.hpp
		Graphics/RenderStage.hpp
		Graphics/Subrender.hpp
		Graphics/SubrenderHolder.hpp
		Guis/Gui.hpp
		Guis/GuisSubrender.hpp
		Inputs/Axes/ButtonInputAxis.hpp
		Inputs/Axes/CompoundInputAxis.hpp
		Inputs/Axes/JoystickHatInput.hpp
		Inputs/Axes/JoystickInputAxis.hpp
		Inputs/Axes/MouseInputAxis.hpp
		Inputs/Buttons/AxisInputButton.hpp
		Inputs/Buttons/CompoundInputButton.hpp
		Inputs/Buttons/JoystickInputButton.hpp
		Inputs/Buttons/KeyboardInputButton.hpp
		Inputs/Buttons/MouseInputButton.hpp
		Inputs/Input.hpp
		Inputs/InputAxis.hpp
		Inputs/InputButton.hpp
		Inputs/InputDelay.hpp
		Inputs/InputScheme.hpp
		Lights/Fog.hpp
		Lights/Light.hpp
		Materials/DefaultMaterial.hpp
		Materials/Material.hpp
		Materials/MaterialPipeline.hpp
		Maths/Colour.hpp
		Maths/Colour.inl
		Maths/ElapsedTime.hpp
		Maths/Maths.hpp
		Maths/Matrix2.hpp
		Maths/Matrix3.hpp
		Maths/Matrix4.hpp
		Maths/Quaternion.hpp
		Maths/Time.hpp
		Maths/Time.inl
		Maths/Transform.hpp
		Maths/Vector2.hpp
		Maths/Vector2.inl
		Maths/Vector3.hpp
		Maths/Vector3.inl
		Maths/Vector4.hpp
		Maths/Vector4.inl
		Meshes/Mesh.hpp
		Meshes/MeshesSubrender.hpp
		Models/Gltf/GltfModel.hpp
		Models/Model.hpp
		Models/Obj/ObjModel.hpp
		Models/Shapes/CubeModel.hpp
		Models/Shapes/CylinderModel.hpp
		Models/Shapes/DiskModel.hpp
		Models/Shapes/PatternMesh.hpp
		Models/Shapes/RectangleModel.hpp
		Models/Shapes/SimpleMesh.hpp
		Models/Shapes/SphereModel.hpp
		Models/Vertex2d.hpp
		Models/Vertex3d.hpp
		Network/Ftp/Ftp.hpp
		Network/Ftp/FtpDataChannel.hpp
		Network/Ftp/FtpResponse.hpp
		Network/Ftp/FtpResponseDirectory.hpp
		Network/Ftp/FtpResponseListing.hpp
		Network/Http/Http.hpp
		Network/Http/HttpRequest.hpp
		Network/Http/HttpResponse.hpp
		Network/IpAddress.hpp
		Network/Packet.hpp
		Network/Socket.hpp
		Network/SocketSelector.hpp
		Network/Tcp/TcpListener.hpp
		Network/Tcp/TcpSocket.hpp
		Network/Udp/UdpSocket.hpp
		Particles/Emitters/CircleEmitter.hpp
		Particles/Emitters/Emitter.hpp
		Particles/Emitters/LineEmitter.hpp
		Particles/Emitters/PointEmitter.hpp
		Particles/Emitters/SphereEmitter.hpp
		Particles/Particle.hpp
		Particles/Particles.hpp
		Particles/ParticlesSubrender.hpp
		Particles/ParticleSystem.hpp
		Particles/ParticleType.hpp
		Physics/Colliders/CapsuleCollider.hpp
		Physics/Colliders/Collider.hpp
		Physics/Colliders/ConeCollider.hpp
		Physics/Colliders/ConvexHullCollider.hpp
		Physics/Colliders/CubeCollider.hpp
		Physics/Colliders/CylinderCollider.hpp
		Physics/Colliders/HeightfieldCollider.hpp
		Physics/Colliders/SphereCollider.hpp
		Physics/CollisionObject.hpp
		Physics/Force.hpp
		Physics/Frustum.hpp
		Physics/KinematicCharacter.hpp
		Physics/Ray.hpp
		Physics/Rigidbody.hpp
		Post/Deferred/DeferredSubrender.hpp
		Post/Filters/BlitFilter.hpp
		Post/Filters/BlurFilter.hpp
		Post/Filters/CrtFilter.hpp
		Post/Filters/DarkenFilter.hpp
		Post/Filters/DefaultFilter.hpp
		Post/Filters/DofFilter.hpp
		Post/Filters/EmbossFilter.hpp
		Post/Filters/FxaaFilter.hpp
		Post/Filters/GrainFilter.hpp
		Post/Filters/GreyFilter.hpp
		Post/Filters/LensflareFilter.hpp
		Post/Filters/NegativeFilter.hpp
		Post/Filters/PixelFilter.hpp
		Post/Filters/SepiaFilter.hpp
		Post/Filters/SsaoFilter.hpp
		Post/Filters/TiltshiftFilter.hpp
		Post/Filters/ToneFilter.hpp
		Post/Filters/VignetteFilter.hpp
		Post/Filters/WobbleFilter.hpp
		Post/Pipelines/BlurPipeline.hpp
		Post/PostFilter.hpp
		Post/PostPipeline.hpp
		Resources/Resource.hpp
		Resources/Resources.hpp
		Scenes/Camera.hpp
		Scenes/Component.hpp
		Scenes/Entity.hpp
		Scenes/EntityPrefab.hpp
		Scenes/Scene.hpp
		Scenes/ScenePhysics.hpp
		Scenes/Scenes.hpp
		Scenes/SceneStructure.hpp
		Shadows/ShadowBox.hpp
		Shadows/ShadowRender.hpp
		Shadows/Shadows.hpp
		Shadows/ShadowsSubrender.hpp
		Skyboxes/SkyboxMaterial.hpp
		Timers/Timers.hpp
		Uis/Constraints/BestFitConstraint.hpp
		Uis/Constraints/PixelConstraint.hpp
		Uis/Constraints/RatioConstraint.hpp
		Uis/Constraints/RelativeConstraint.hpp
		Uis/Constraints/UiAnchor.hpp
		Uis/Constraints/UiConstraint.hpp
		Uis/Constraints/UiConstraints.hpp
		Uis/Drivers/BounceDriver.hpp
		Uis/Drivers/ConstantDriver.hpp
		Uis/Drivers/FadeDriver.hpp
		Uis/Drivers/LinearDriver.hpp
		Uis/Drivers/SinewaveDriver.hpp
		Uis/Drivers/SlideDriver.hpp
		Uis/Drivers/UiDriver.hpp
		Uis/Inputs/UiBooleanInput.hpp
		Uis/Inputs/UiButtonInput.hpp
		Uis/Inputs/UiDropdownInput.hpp
		Uis/Inputs/UiGrabberInput.hpp
		Uis/Inputs/UiRadioInput.hpp
		Uis/Inputs/UiSliderInput.hpp
		Uis/Inputs/UiTextInput.hpp
		Uis/UiObject.hpp
		Uis/UiPanel.hpp
		Uis/Uis.hpp
		Uis/UiScrollBar.hpp
		Uis/UiSection.hpp
		Uis/UiStartLogo.hpp
		Utils/ConstExpr.hpp
		Utils/Enumerate.hpp
		Utils/Factory.hpp
		Utils/Future.hpp
		Utils/NonCopyable.hpp
		Utils/RingBuffer.hpp
		Utils/StreamFactory.hpp
		Utils/String.hpp
		Utils/ThreadPool.hpp
		Utils/TypeInfo.hpp
		)
set(_temp_acid_third_party_headers
		third_party/bitmask/bitmask.hpp
		third_party/cr/cr.h
		third_party/dr_libs/dr_flac.h
		third_party/dr_libs/dr_mp3.h
		third_party/dr_libs/dr_opus.h
		third_party/dr_libs/dr_wav.h
		third_party/fastnoise/FastNoise.h
		third_party/libjpgd/jpgd.h
		third_party/libjpgd/jpgd_idct.h
		third_party/libspng/spng.h
		third_party/miniz/miniz.h
		third_party/msdf/msdf.h
		third_party/rocket/rocket.hpp
		third_party/stb/stb_image.h
		third_party/stb/stb_image_write.h
		third_party/stb/stb_truetype.h
		third_party/stb/stb_vorbis.h
		third_party/tinydng/tiny_dng.h
		third_party/tinyexr/tiny_exr.h
		third_party/tinygltf/json.hpp
		third_party/tinygltf/tiny_gltf.h
		third_party/tinyobj/tiny_obj.h
		third_party/Zippy/ZipArchive.hpp
		third_party/Zippy/ZipEntry.hpp
		third_party/Zippy/ZipException.hpp
		third_party/Zippy/Zippy.hpp
		third_party/Zippy/ZipUtilities.hpp
		)
set(_temp_acid_sources
		Animations/AnimatedMesh.cpp
		Animations/Animation/Animation.cpp
		Animations/Animation/AnimationLoader.cpp
		Animations/Animation/JointTransform.cpp
		Animations/Animation/Keyframe.cpp
		Animations/Animator.cpp
		Animations/Geometry/GeometryLoader.cpp
		Animations/Skeleton/Joint.cpp
		Animations/Skeleton/SkeletonLoader.cpp
		Animations/Skin/SkinLoader.cpp
		Animations/Skin/VertexWeights.cpp
		Audio/Audio.cpp
		Audio/Flac/FlacSoundBuffer.cpp
		Audio/Mp3/Mp3SoundBuffer.cpp
		Audio/Ogg/OggSoundBuffer.cpp
		Audio/Opus/OpusSoundBuffer.cpp
		Audio/Sound.cpp
		Audio/SoundBuffer.cpp
		Audio/Wave/WaveSoundBuffer.cpp
		Bitmaps/Bitmap.cpp
		Bitmaps/Dng/DngBitmap.cpp
		Bitmaps/Exr/ExrBitmap.cpp
		Bitmaps/Jpg/JpgBitmap.cpp
		Bitmaps/Png/PngBitmap.cpp
		Devices/Instance.cpp
		Devices/Joysticks.cpp
		Devices/Keyboard.cpp
		Devices/LogicalDevice.cpp
		Devices/Monitor.cpp
		Devices/Mouse.cpp
		Devices/PhysicalDevice.cpp
		Devices/Surface.cpp
		Devices/Window.cpp
		Engine/Engine.cpp
		Engine/Log.cpp
		Files/File.cpp
		Files/FileObserver.cpp
		Files/Files.cpp
		Files/Json/Json.cpp
		Files/Node.cpp
		Files/NodeConstView.cpp
		Files/NodeView.cpp
		Files/Xml/Xml.cpp
		Fonts/FontsSubrender.cpp
		Fonts/FontType.cpp
		Fonts/Text.cpp
		Gizmos/Gizmo.cpp
		Gizmos/Gizmos.cpp
		Gizmos/GizmosSubrender.cpp
		Gizmos/GizmoType.cpp
		Graphics/Buffers/Buffer.cpp
		Graphics/Buffers/InstanceBuffer.cpp
		Graphics/Buffers/PushHandler.cpp
		Graphics/Buffers/StorageBuffer.cpp
		Graphics/Buffers/StorageHandler.cpp
		Graphics/Buffers/UniformBuffer.cpp
		Graphics/Buffers/UniformHandler.cpp
		Graphics/Commands/CommandBuffer.cpp
		Graphics/Commands/CommandPool.cpp
		Graphics/Descriptors/DescriptorSet.cpp
		Graphics/Descriptors/DescriptorsHandler.cpp
		Graphics/Graphics.cpp
		Graphics/Images/Image.cpp
		Graphics/Images/Image2d.cpp
		Graphics/Images/Image2dArray.cpp
		Graphics/Images/ImageCube.cpp
		Graphics/Images/ImageDepth.cpp
		Graphics/Pipelines/PipelineCompute.cpp
		Graphics/Pipelines/PipelineGraphics.cpp
		Graphics/Pipelines/Shader.cpp
		Graphics/Renderpass/Framebuffers.cpp
		Graphics/Renderpass/Renderpass.cpp
		Graphics/Renderpass/Swapchain.cpp
		Graphics/RenderStage.cpp
		Graphics/SubrenderHolder.cpp
		Guis/Gui.cpp
		Guis/GuisSubrender.cpp
		Inputs/Axes/ButtonInputAxis.cpp
		Inputs/Axes/CompoundInputAxis.cpp
		Inputs/Axes/JoystickHatInput.cpp
		Inputs/Axes/JoystickInputAxis.cpp
		Inputs/Axes/MouseInputAxis.cpp
		Inputs/Buttons/AxisInputButton.cpp
		Inputs/Buttons/CompoundInputButton.cpp
		Inputs/Buttons/JoystickInputButton.cpp
		Inputs/Buttons/KeyboardInputButton.cpp
		Inputs/Buttons/MouseInputButton.cpp
		Inputs/Input.cpp
		Inputs/InputDelay.cpp
		Inputs/InputScheme.cpp
		Lights/Fog.cpp
		Lights/Light.cpp
		Materials/DefaultMaterial.cpp
		Materials/MaterialPipeline.cpp
		Maths/Colour.cpp
		Maths/ElapsedTime.cpp
		Maths/Maths.cpp
		Maths/Matrix2.cpp
		Maths/Matrix3.cpp
		Maths/Matrix4.cpp
		Maths/Quaternion.cpp
		Maths/Transform.cpp
		Maths/Vector2.cpp
		Maths/Vector3.cpp
		Maths/Vector4.cpp
		Meshes/Mesh.cpp
		Meshes/MeshesSubrender.cpp
		Models/Gltf/GltfModel.cpp
		Models/Model.cpp
		Models/Obj/ObjModel.cpp
		Models/Shapes/CubeModel.cpp
		Models/Shapes/CylinderModel.cpp
		Models/Shapes/DiskModel.cpp
		Models/Shapes/PatternMesh.cpp
		Models/Shapes/RectangleModel.cpp
		Models/Shapes/SimpleMesh.cpp
		Models/Shapes/SphereModel.cpp
		Network/Ftp/Ftp.cpp
		Network/Ftp/FtpDataChannel.cpp
		Network/Ftp/FtpResponse.cpp
		Network/Ftp/FtpResponseDirectory.cpp
		Network/Ftp/FtpResponseListing.cpp
		Network/Http/Http.cpp
		Network/Http/HttpRequest.cpp
		Network/Http/HttpResponse.cpp
		Network/IpAddress.cpp
		Network/Packet.cpp
		Network/Socket.cpp
		Network/SocketSelector.cpp
		Network/Tcp/TcpListener.cpp
		Network/Tcp/TcpSocket.cpp
		Network/Udp/UdpSocket.cpp
		Particles/Emitters/CircleEmitter.cpp
		Particles/Emitters/LineEmitter.cpp
		Particles/Emitters/PointEmitter.cpp
		Particles/Emitters/SphereEmitter.cpp
		Particles/Particle.cpp
		Particles/Particles.cpp
		Particles/ParticlesSubrender.cpp
		Particles/ParticleSystem.cpp
		Particles/ParticleType.cpp
		Physics/Colliders/CapsuleCollider.cpp
		Physics/Colliders/Collider.cpp
		Physics/Colliders/ConeCollider.cpp
		Physics/Colliders/ConvexHullCollider.cpp
		Physics/Colliders/CubeCollider.cpp
		Physics/Colliders/CylinderCollider.cpp
		Physics/Colliders/HeightfieldCollider.cpp
		Physics/Colliders/SphereCollider.cpp
		Physics/CollisionObject.cpp
		Physics/Force.cpp
		Physics/Frustum.cpp
		Physics/KinematicCharacter.cpp
		Physics/Ray.cpp
		Physics/Rigidbody.cpp
		Post/Deferred/DeferredSubrender.cpp
		Post/Filters/BlitFilter.cpp
		Post/Filters/BlurFilter.cpp
		Post/Filters/CrtFilter.cpp
		Post/Filters/DarkenFilter.cpp
		Post/Filters/DefaultFilter.cpp
		Post/Filters/DofFilter.cpp
		Post/Filters/EmbossFilter.cpp
		Post/Filters/FxaaFilter.cpp
		Post/Filters/GrainFilter.cpp
		Post/Filters/GreyFilter.cpp
		Post/Filters/LensflareFilter.cpp
		Post/Filters/NegativeFilter.cpp
		Post/Filters/PixelFilter.cpp
		Post/Filters/SepiaFilter.cpp
		Post/Filters/SsaoFilter.cpp
		Post/Filters/TiltshiftFilter.cpp
		Post/Filters/ToneFilter.cpp
		Post/Filters/VignetteFilter.cpp
		Post/Filters/WobbleFilter.cpp
		Post/Pipelines/BlurPipeline.cpp
		Post/PostFilter.cpp
		Resources/Resources.cpp
		Scenes/Entity.cpp
		Scenes/EntityPrefab.cpp
		Scenes/ScenePhysics.cpp
		Scenes/Scenes.cpp
		Scenes/SceneStructure.cpp
		Shadows/ShadowBox.cpp
		Shadows/ShadowRender.cpp
		Shadows/Shadows.cpp
		Shadows/ShadowsSubrender.cpp
		Skyboxes/SkyboxMaterial.cpp
		Timers/Timers.cpp
		Uis/Constraints/UiAnchor.cpp
		Uis/Constraints/UiConstraints.cpp
		Uis/Inputs/UiBooleanInput.cpp
		Uis/Inputs/UiButtonInput.cpp
		Uis/Inputs/UiDropdownInput.cpp
		Uis/Inputs/UiGrabberInput.cpp
		Uis/Inputs/UiRadioInput.cpp
		Uis/Inputs/UiSliderInput.cpp
		Uis/Inputs/UiTextInput.cpp
		Uis/UiObject.cpp
		Uis/UiPanel.cpp
		Uis/Uis.cpp
		Uis/UiScrollBar.cpp
		Uis/UiSection.cpp
		Uis/UiStartLogo.cpp
		Utils/String.cpp
		Utils/ThreadPool.cpp
		)
set(_temp_acid_third_party_sources
		third_party/dr_libs/dr_flac.c
		third_party/dr_libs/dr_mp3.c
		third_party/dr_libs/dr_opus.c
		third_party/dr_libs/dr_wav.c
		third_party/fastnoise/FastNoise.cpp
		third_party/libjpgd/jpgd.cpp
		third_party/libspng/spng.c
		third_party/miniz/miniz.c
		third_party/msdf/msdf.c
		third_party/stb/stb_image.c
		third_party/stb/stb_image_write.c
		third_party/stb/stb_truetype.c
		third_party/stb/stb_vorbis.c
		third_party/tinydng/tiny_dng.cpp
		third_party/tinyexr/tiny_exr.cpp
		third_party/tinygltf/tiny_gltf.cpp
		third_party/tinyobj/tiny_obj.cpp
		)

# Check if given C++ source compiles and links into an executable.
include(CheckCXXSourceCompiles)

# Check if we can link to `std::filesystem`. macOS < 10.15, iOS < 13, Android.
check_cxx_source_compiles("#include <filesystem>\nint main() { std::filesystem::space(\"/\"); }" HAS_STD_FILESYSTEM)
if(NOT HAS_STD_FILESYSTEM)
	message(WARNING "std::filesystem implementation not found, linking aganst our own sources")
	list(APPEND _temp_acid_third_party_sources
			third_party/filesystem/src/operations.cpp
			third_party/filesystem/src/directory_iterator.cpp
			third_party/filesystem/src/filesystem_common.h
			third_party/filesystem/src/int128_builtins.cpp
			)
endif()
# Check if we have `std::filesystem` headers. iOS < 13.
check_cxx_source_compiles("#include <filesystem>\nint main() { using path = std::filesystem::path;\n0; }" HAS_STD_FILESYSTEM_HEADERS)
if(NOT HAS_STD_FILESYSTEM_HEADERS)
	message(WARNING "std::filesystem headers not found, including our own headers")
	list(APPEND _temp_acid_third_party_headers
			third_party/filesystem/include/filesystem
			)
	target_include_directories(Acid
			PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/third_party/filesystem/include>
			)
endif()

get_filename_component(CURRENT_PARENT_DIR ${CMAKE_CURRENT_SOURCE_DIR} PATH)
if(ACID_LINK_RESOURCES)
	# Directory that Acid resources can be found.
	set(ACID_RESOURCES_DIR "${CURRENT_PARENT_DIR}/Resources")
endif()
if(ACID_INSTALL_RESOURCES)
	# Install resources for end-user usage because many source files use these
	install(DIRECTORY "${CURRENT_PARENT_DIR}/Resources"
			# Example: this will install the Resources dir to /usr/share/Acid/Resources on Linux
			DESTINATION "${CMAKE_INSTALL_DATADIR}/${PROJECT_NAME}"
			)
endif()

# Generates a header containing export macros
include(GenerateExportHeader)
generate_export_header(Acid EXPORT_FILE_NAME "${CMAKE_CURRENT_BINARY_DIR}/Export.hpp")

# Adds a CMake generated config file
configure_file(Config.hpp.in "${CMAKE_CURRENT_BINARY_DIR}/Config.hpp" @ONLY)

# Sets all headers as PUBLIC sources for Acid
# The BUILD/INSTALL interface generator expressions are for the EXPORT command
# Otherwise it wouldn't know where to look for them
foreach(_acid_header IN LISTS _temp_acid_headers _temp_acid_third_party_headers)
	target_sources(Acid PRIVATE
			$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${_acid_header}>
			$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}/${_acid_header}>
			)
endforeach()
# Sets all sources (cpp) as PRIVATE sources for Acid
# An INSTALL_INTERFACE isn't needed, as cpp files aren't installed
foreach(_acid_source IN LISTS _temp_acid_sources _temp_acid_third_party_sources)
	target_sources(Acid PRIVATE
			$<BUILD_INTERFACE:${_acid_source}>
			)
endforeach()

# Changes how sources appear in IDE virtual file structures.
include(AcidGroupSources)
acid_group_sources("${CMAKE_CURRENT_SOURCE_DIR}" "/" "" "${_temp_acid_headers}")
acid_group_sources("${CMAKE_CURRENT_SOURCE_DIR}" "/" "" "${_temp_acid_sources}")
acid_group_sources("${CMAKE_CURRENT_SOURCE_DIR}" "/third_party" "ThirdParty/" "${_temp_acid_third_party_headers}")
acid_group_sources("${CMAKE_CURRENT_SOURCE_DIR}" "/third_party" "ThirdParty/" "${_temp_acid_third_party_sources}")

# Include this file in our project view.
target_sources(Acid PRIVATE
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/CMakeSources.cmake>
		)
