.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.android.ims.IMS_INCOMING_CALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v3, "onReceive : incoming call intent"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    .line 133
    :cond_1
    :try_start_0
    const-string/jumbo v1, "android:ussd"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 134
    .local v10, "isUssd":Z
    if-eqz v10, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v3, "onReceive : USSD"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v4

    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v12

    invoke-virtual {v3, v4, p2, v12}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get21(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get21(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->accept(I)V

    .line 140
    :cond_2
    return-void

    .line 143
    :cond_3
    const-string/jumbo v1, "android:isUnknown"

    .line 144
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 146
    .local v5, "isUnknown":Z
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : isUnknown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    const-string/jumbo v4, " fg = "

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    const-string/jumbo v4, " bg = "

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v4

    invoke-virtual {v1, v3, p2, v4}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 153
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 154
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 155
    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 153
    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 158
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v6

    .line 161
    .local v6, "activeCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v6, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v7

    .line 162
    .local v7, "answeringWillDisconnect":Z
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setActiveCallDisconnectedOnAnswer(Z)V

    .line 164
    .end local v6    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v7    # "answeringWillDisconnect":Z
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    .line 170
    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->getSession()Lcom/android/ims/internal/ImsCallSession;

    move-result-object v4

    .line 169
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallReceive(ILcom/android/ims/internal/ImsCallSession;)V

    .line 172
    if-eqz v5, :cond_7

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 123
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v5    # "isUnknown":Z
    .end local v10    # "isUssd":Z
    :cond_5
    :goto_2
    return-void

    .line 155
    .restart local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .restart local v5    # "isUnknown":Z
    .restart local v10    # "isUssd":Z
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    goto :goto_0

    .line 175
    .restart local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_8

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_9

    .line 177
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 180
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyIncomingRing()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 186
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v5    # "isUnknown":Z
    .end local v10    # "isUssd":Z
    :catch_0
    move-exception v9

    .line 187
    .local v9, "e":Lcom/android/ims/ImsException;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 190
    .end local v9    # "e":Lcom/android/ims/ImsException;
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string/jumbo v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    const-string/jumbo v1, "subscription"

    .line 193
    const/4 v3, -0x1

    .line 192
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 194
    .local v11, "subId":I
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    if-ne v11, v1, :cond_5

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : Updating mAllowEmergencyVideoCalls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v4

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 188
    .end local v11    # "subId":I
    :catch_1
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method
