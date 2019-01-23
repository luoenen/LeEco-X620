.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 342
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 344
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    .line 342
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    .line 349
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;)V

    .line 347
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 354
    const-string/jumbo v8, "DhcpClient"

    const-string/jumbo v9, "Receive thread started"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v8, :cond_2

    .line 356
    const/4 v4, 0x0

    .line 358
    .local v4, "length":I
    :try_start_0
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v8}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v8

    iget-object v9, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    iget-object v10, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v11, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v9, 0x0

    invoke-static {v8, v4, v9}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v5

    .line 361
    .local v5, "packet":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received packet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const v9, 0x30066

    invoke-virtual {v8, v9, v5}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 363
    .end local v5    # "packet":Landroid/net/dhcp/DhcpPacket;
    :catch_0
    move-exception v3

    .line 364
    .local v3, "e":Ljava/lang/Exception;
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v8, :cond_0

    .line 365
    const-string/jumbo v8, "DhcpClient"

    const-string/jumbo v9, "Read error"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    sget v9, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    invoke-static {v8, v9}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;I)V

    goto :goto_0

    .line 368
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 369
    .local v2, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    const-string/jumbo v8, "DhcpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t parse packet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/net/dhcp/DhcpPacket$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget v8, v2, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    sget v9, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    if-ne v8, v9, :cond_1

    .line 374
    const v6, 0x534e4554

    .line 375
    .local v6, "snetTagId":I
    const-string/jumbo v0, "31850211"

    .line 376
    .local v0, "bugId":Ljava/lang/String;
    const/4 v7, -0x1

    .line 377
    .local v7, "uid":I
    const-class v8, Landroid/net/dhcp/DhcpPacket$ParseException;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "data":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 380
    .end local v0    # "bugId":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v6    # "snetTagId":I
    .end local v7    # "uid":I
    :cond_1
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v9, v2, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    invoke-static {v8, v9}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;I)V

    goto/16 :goto_0

    .line 383
    .end local v2    # "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    .end local v4    # "length":I
    :cond_2
    const-string/jumbo v8, "DhcpClient"

    const-string/jumbo v9, "Receive thread stopped"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method
