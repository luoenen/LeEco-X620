.class public interface abstract Landroid/app/FlymeExtIApplicationThread;
.super Ljava/lang/Object;
.source "FlymeExtIApplicationThread.java"


# static fields
.field public static final FIRST_CALL_TRANSACTION:I = 0x2710

.field public static final TRANSACTION_SCHEDULE_SCROLL_ACTIVITY:I = 0x2712

.field public static final TRANSACTION_SCHEDULE_SHRINK_MEMORY:I = 0x2711


# virtual methods
.method public abstract scheduleScrollActivity(Landroid/os/IBinder;Landroid/os/IBinder;[Landroid/view/MotionEvent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleShrinkMemory(Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
