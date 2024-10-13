// raylib-zig (c) Nikolas Wipper 2024

const rl = @import("raylib.zig");
const rlgl = @import("rlgl.zig");

pub extern "c" fn rlMatrixMode(mode: c_int) void;
pub extern "c" fn rlPushMatrix() void;
pub extern "c" fn rlPopMatrix() void;
pub extern "c" fn rlLoadIdentity() void;
pub extern "c" fn rlTranslatef(x: f32, y: f32, z: f32) void;
pub extern "c" fn rlRotatef(angle: f32, x: f32, y: f32, z: f32) void;
pub extern "c" fn rlScalef(x: f32, y: f32, z: f32) void;
pub extern "c" fn rlMultMatrixf(matf: [*c]const f32) void;
pub extern "c" fn rlFrustum(left: f64, right: f64, bottom: f64, top: f64, znear: f64, zfar: f64) void;
pub extern "c" fn rlOrtho(left: f64, right: f64, bottom: f64, top: f64, znear: f64, zfar: f64) void;
pub extern "c" fn rlViewport(x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern "c" fn rlSetClipPlanes(nearPlane: f64, farPlane: f64) void;
pub extern "c" fn rlGetCullDistanceNear() f64;
pub extern "c" fn rlGetCullDistanceFar() f64;
pub extern "c" fn rlBegin(mode: c_int) void;
pub extern "c" fn rlEnd() void;
pub extern "c" fn rlVertex2i(x: c_int, y: c_int) void;
pub extern "c" fn rlVertex2f(x: f32, y: f32) void;
pub extern "c" fn rlVertex3f(x: f32, y: f32, z: f32) void;
pub extern "c" fn rlTexCoord2f(x: f32, y: f32) void;
pub extern "c" fn rlNormal3f(x: f32, y: f32, z: f32) void;
pub extern "c" fn rlColor4ub(r: u8, g: u8, b: u8, a: u8) void;
pub extern "c" fn rlColor3f(x: f32, y: f32, z: f32) void;
pub extern "c" fn rlColor4f(x: f32, y: f32, z: f32, w: f32) void;
pub extern "c" fn rlEnableVertexArray(vaoId: c_uint) bool;
pub extern "c" fn rlDisableVertexArray() void;
pub extern "c" fn rlEnableVertexBuffer(id: c_uint) void;
pub extern "c" fn rlDisableVertexBuffer() void;
pub extern "c" fn rlEnableVertexBufferElement(id: c_uint) void;
pub extern "c" fn rlDisableVertexBufferElement() void;
pub extern "c" fn rlEnableVertexAttribute(index: c_uint) void;
pub extern "c" fn rlDisableVertexAttribute(index: c_uint) void;
pub extern "c" fn rlEnableStatePointer(vertexAttribType: c_int, buffer: ?*anyopaque) void;
pub extern "c" fn rlDisableStatePointer(vertexAttribType: c_int) void;
pub extern "c" fn rlActiveTextureSlot(slot: c_int) void;
pub extern "c" fn rlEnableTexture(id: c_uint) void;
pub extern "c" fn rlDisableTexture() void;
pub extern "c" fn rlEnableTextureCubemap(id: c_uint) void;
pub extern "c" fn rlDisableTextureCubemap() void;
pub extern "c" fn rlTextureParameters(id: c_uint, param: c_int, value: c_int) void;
pub extern "c" fn rlCubemapParameters(id: c_uint, param: c_int, value: c_int) void;
pub extern "c" fn rlEnableShader(id: c_uint) void;
pub extern "c" fn rlDisableShader() void;
pub extern "c" fn rlEnableFramebuffer(id: c_uint) void;
pub extern "c" fn rlDisableFramebuffer() void;
pub extern "c" fn rlGetActiveFramebuffer() c_uint;
pub extern "c" fn rlActiveDrawBuffers(count: c_int) void;
pub extern "c" fn rlBlitFramebuffer(srcX: c_int, srcY: c_int, srcWidth: c_int, srcHeight: c_int, dstX: c_int, dstY: c_int, dstWidth: c_int, dstHeight: c_int, bufferMask: c_int) void;
pub extern "c" fn rlBindFramebuffer(target: c_uint, framebuffer: c_uint) void;
pub extern "c" fn rlEnableColorBlend() void;
pub extern "c" fn rlDisableColorBlend() void;
pub extern "c" fn rlEnableDepthTest() void;
pub extern "c" fn rlDisableDepthTest() void;
pub extern "c" fn rlEnableDepthMask() void;
pub extern "c" fn rlDisableDepthMask() void;
pub extern "c" fn rlEnableBackfaceCulling() void;
pub extern "c" fn rlDisableBackfaceCulling() void;
pub extern "c" fn rlColorMask(r: bool, g: bool, b: bool, a: bool) void;
pub extern "c" fn rlSetCullFace(mode: c_int) void;
pub extern "c" fn rlEnableScissorTest() void;
pub extern "c" fn rlDisableScissorTest() void;
pub extern "c" fn rlScissor(x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern "c" fn rlEnableWireMode() void;
pub extern "c" fn rlEnablePointMode() void;
pub extern "c" fn rlDisableWireMode() void;
pub extern "c" fn rlSetLineWidth(width: f32) void;
pub extern "c" fn rlGetLineWidth() f32;
pub extern "c" fn rlEnableSmoothLines() void;
pub extern "c" fn rlDisableSmoothLines() void;
pub extern "c" fn rlEnableStereoRender() void;
pub extern "c" fn rlDisableStereoRender() void;
pub extern "c" fn rlIsStereoRenderEnabled() bool;
pub extern "c" fn rlClearColor(r: u8, g: u8, b: u8, a: u8) void;
pub extern "c" fn rlClearScreenBuffers() void;
pub extern "c" fn rlCheckErrors() void;
pub extern "c" fn rlSetBlendMode(mode: c_int) void;
pub extern "c" fn rlSetBlendFactors(glSrcFactor: c_int, glDstFactor: c_int, glEquation: c_int) void;
pub extern "c" fn rlSetBlendFactorsSeparate(glSrcRGB: c_int, glDstRGB: c_int, glSrcAlpha: c_int, glDstAlpha: c_int, glEqRGB: c_int, glEqAlpha: c_int) void;
pub extern "c" fn rlglInit(width: c_int, height: c_int) void;
pub extern "c" fn rlglClose() void;
pub extern "c" fn rlLoadExtensions(loader: *anyopaque) void;
pub extern "c" fn rlGetVersion() c_int;
pub extern "c" fn rlSetFramebufferWidth(width: c_int) void;
pub extern "c" fn rlGetFramebufferWidth() c_int;
pub extern "c" fn rlSetFramebufferHeight(height: c_int) void;
pub extern "c" fn rlGetFramebufferHeight() c_int;
pub extern "c" fn rlGetTextureIdDefault() c_uint;
pub extern "c" fn rlGetShaderIdDefault() c_uint;
pub extern "c" fn rlGetShaderLocsDefault() [*c]c_int;
pub extern "c" fn rlLoadRenderBatch(numBuffers: c_int, bufferElements: c_int) rlgl.rlRenderBatch;
pub extern "c" fn rlUnloadRenderBatch(batch: rlgl.rlRenderBatch) void;
pub extern "c" fn rlDrawRenderBatch(batch: [*c]rlgl.rlRenderBatch) void;
pub extern "c" fn rlSetRenderBatchActive(batch: [*c]rlgl.rlRenderBatch) void;
pub extern "c" fn rlDrawRenderBatchActive() void;
pub extern "c" fn rlCheckRenderBatchLimit(vCount: c_int) bool;
pub extern "c" fn rlSetTexture(id: c_uint) void;
pub extern "c" fn rlLoadVertexArray() c_uint;
pub extern "c" fn rlLoadVertexBuffer(buffer: *const anyopaque, size: c_int, dynamic: bool) c_uint;
pub extern "c" fn rlLoadVertexBufferElement(buffer: *const anyopaque, size: c_int, dynamic: bool) c_uint;
pub extern "c" fn rlUpdateVertexBuffer(bufferId: c_uint, data: *const anyopaque, dataSize: c_int, offset: c_int) void;
pub extern "c" fn rlUpdateVertexBufferElements(id: c_uint, data: *const anyopaque, dataSize: c_int, offset: c_int) void;
pub extern "c" fn rlUnloadVertexArray(vaoId: c_uint) void;
pub extern "c" fn rlUnloadVertexBuffer(vboId: c_uint) void;
pub extern "c" fn rlSetVertexAttribute(index: c_uint, compSize: c_int, ty: c_int, normalized: bool, stride: c_int, offset: c_int) void;
pub extern "c" fn rlSetVertexAttributeDivisor(index: c_uint, divisor: c_int) void;
pub extern "c" fn rlSetVertexAttributeDefault(locIndex: c_int, value: *const anyopaque, attribType: c_int, count: c_int) void;
pub extern "c" fn rlDrawVertexArray(offset: c_int, count: c_int) void;
pub extern "c" fn rlDrawVertexArrayElements(offset: c_int, count: c_int, buffer: ?*const anyopaque) void;
pub extern "c" fn rlDrawVertexArrayInstanced(offset: c_int, count: c_int, instances: c_int) void;
pub extern "c" fn rlDrawVertexArrayElementsInstanced(offset: c_int, count: c_int, buffer: ?*const anyopaque, instances: c_int) void;
pub extern "c" fn rlLoadTexture(data: ?*const anyopaque, width: c_int, height: c_int, format: c_int, mipmapCount: c_int) c_uint;
pub extern "c" fn rlLoadTextureDepth(width: c_int, height: c_int, useRenderBuffer: bool) c_uint;
pub extern "c" fn rlLoadTextureCubemap(data: ?*const anyopaque, size: c_int, format: c_int) c_uint;
pub extern "c" fn rlUpdateTexture(id: c_uint, offsetX: c_int, offsetY: c_int, width: c_int, height: c_int, format: c_int, data: *const anyopaque) void;
pub extern "c" fn rlGetGlTextureFormats(format: c_int, glInternalFormat: [*c]c_uint, glFormat: [*c]c_uint, glType: [*c]c_uint) void;
pub extern "c" fn rlGetPixelFormatName(format: c_uint) [*c]const u8;
pub extern "c" fn rlUnloadTexture(id: c_uint) void;
pub extern "c" fn rlGenTextureMipmaps(id: c_uint, width: c_int, height: c_int, format: c_int, mipmaps: [*c]c_int) void;
pub extern "c" fn rlReadTexturePixels(id: c_uint, width: c_int, height: c_int, format: c_int) *anyopaque;
pub extern "c" fn rlReadScreenPixels(width: c_int, height: c_int) [*c]u8;
pub extern "c" fn rlLoadFramebuffer() c_uint;
pub extern "c" fn rlFramebufferAttach(fboId: c_uint, texId: c_uint, attachType: c_int, texType: c_int, mipLevel: c_int) void;
pub extern "c" fn rlFramebufferComplete(id: c_uint) bool;
pub extern "c" fn rlUnloadFramebuffer(id: c_uint) void;
pub extern "c" fn rlLoadShaderCode(vsCode: [*c]const u8, fsCode: [*c]const u8) c_uint;
pub extern "c" fn rlCompileShader(shaderCode: [*c]const u8, ty: c_int) c_uint;
pub extern "c" fn rlLoadShaderProgram(vShaderId: c_uint, fShaderId: c_uint) c_uint;
pub extern "c" fn rlUnloadShaderProgram(id: c_uint) void;
pub extern "c" fn rlGetLocationUniform(shaderId: c_uint, uniformName: [*c]const u8) c_int;
pub extern "c" fn rlGetLocationAttrib(shaderId: c_uint, attribName: [*c]const u8) c_int;
pub extern "c" fn rlSetUniform(locIndex: c_int, value: *const anyopaque, uniformType: c_int, count: c_int) void;
pub extern "c" fn rlSetUniformMatrix(locIndex: c_int, mat: rl.Matrix) void;
pub extern "c" fn rlSetUniformMatrices(locIndex: c_int, mat: [*c]const rl.Matrix, count: c_int) void;
pub extern "c" fn rlSetUniformSampler(locIndex: c_int, textureId: c_uint) void;
pub extern "c" fn rlSetShader(id: c_uint, locs: [*c]c_int) void;
pub extern "c" fn rlLoadComputeShaderProgram(shaderId: c_uint) c_uint;
pub extern "c" fn rlComputeShaderDispatch(groupX: c_uint, groupY: c_uint, groupZ: c_uint) void;
pub extern "c" fn rlLoadShaderBuffer(size: c_uint, data: ?*const anyopaque, usageHint: c_int) c_uint;
pub extern "c" fn rlUnloadShaderBuffer(ssboId: c_uint) void;
pub extern "c" fn rlUpdateShaderBuffer(id: c_uint, data: *const anyopaque, dataSize: c_uint, offset: c_uint) void;
pub extern "c" fn rlBindShaderBuffer(id: c_uint, index: c_uint) void;
pub extern "c" fn rlReadShaderBuffer(id: c_uint, dest: *anyopaque, count: c_uint, offset: c_uint) void;
pub extern "c" fn rlCopyShaderBuffer(destId: c_uint, srcId: c_uint, destOffset: c_uint, srcOffset: c_uint, count: c_uint) void;
pub extern "c" fn rlGetShaderBufferSize(id: c_uint) c_uint;
pub extern "c" fn rlBindImageTexture(id: c_uint, index: c_uint, format: c_int, readonly: bool) void;
pub extern "c" fn rlGetMatrixModelview() rl.Matrix;
pub extern "c" fn rlGetMatrixProjection() rl.Matrix;
pub extern "c" fn rlGetMatrixTransform() rl.Matrix;
pub extern "c" fn rlGetMatrixProjectionStereo(eye: c_int) rl.Matrix;
pub extern "c" fn rlGetMatrixViewOffsetStereo(eye: c_int) rl.Matrix;
pub extern "c" fn rlSetMatrixProjection(proj: rl.Matrix) void;
pub extern "c" fn rlSetMatrixModelview(view: rl.Matrix) void;
pub extern "c" fn rlSetMatrixProjectionStereo(right: rl.Matrix, left: rl.Matrix) void;
pub extern "c" fn rlSetMatrixViewOffsetStereo(right: rl.Matrix, left: rl.Matrix) void;
pub extern "c" fn rlLoadDrawCube() void;
pub extern "c" fn rlLoadDrawQuad() void;
