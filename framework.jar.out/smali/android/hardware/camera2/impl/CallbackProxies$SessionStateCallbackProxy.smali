.class public Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionStateCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker",
            "<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 156
    const-string/jumbo v0, "dispatchTarget must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 157
    .restart local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 158
    const-class v1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 157
    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 155
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onActive"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onClosed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onConfigureFailed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 163
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onConfigured"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 174
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onReady"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 189
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onSurfacePrepared"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method
