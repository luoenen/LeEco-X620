.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore_15:I = 0x10

.field static final TRANSACTION_agentConnected_2:I = 0x3

.field static final TRANSACTION_agentDisconnected_3:I = 0x4

.field static final TRANSACTION_backupNow_11:I = 0xc

.field static final TRANSACTION_beginRestoreSession_24:I = 0x19

.field static final TRANSACTION_clearBackupData_1:I = 0x2

.field static final TRANSACTION_dataChanged_0:I = 0x1

.field static final TRANSACTION_fullBackup_12:I = 0xd

.field static final TRANSACTION_fullRestore_14:I = 0xf

.field static final TRANSACTION_fullTransportBackup_13:I = 0xe

.field static final TRANSACTION_getAvailableRestoreToken_28:I = 0x1d

.field static final TRANSACTION_getConfigurationIntent_20:I = 0x15

.field static final TRANSACTION_getCurrentTransport_16:I = 0x11

.field static final TRANSACTION_getDataManagementIntent:I = 0x17

.field static final TRANSACTION_getDataManagementLabel:I = 0x18

.field static final TRANSACTION_getDestinationString_21:I = 0x16

.field static final TRANSACTION_getTransportWhitelist_18:I = 0x13

.field static final TRANSACTION_hasBackupPassword_10:I = 0xb

.field static final TRANSACTION_isAppEligibleForBackup_29:I = 0x1e

.field static final TRANSACTION_isBackupEnabled_8:I = 0x9

.field static final TRANSACTION_isBackupServiceActive_27:I = 0x1c

.field static final TRANSACTION_listAllTransports_17:I = 0x12

.field static final TRANSACTION_opComplete_25:I = 0x1a

.field static final TRANSACTION_requestBackup:I = 0x1f

.field static final TRANSACTION_restoreAtInstall_4:I = 0x5

.field static final TRANSACTION_selectBackupTransport_19:I = 0x14

.field static final TRANSACTION_setAutoRestore_6:I = 0x7

.field static final TRANSACTION_setBackupEnabled_5:I = 0x6

.field static final TRANSACTION_setBackupPassword_9:I = 0xa

.field static final TRANSACTION_setBackupProvisioned_7:I = 0x8

.field static final TRANSACTION_setBackupServiceActive_26:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    return-object v1

    .line 36
    :cond_0
    const-string/jumbo v1, "android.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 401
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 52
    :sswitch_0
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v4, 0x1

    return v4

    .line 57
    :sswitch_1
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 60
    .local v20, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v4, 0x1

    return v4

    .line 66
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 70
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 71
    .local v28, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v4, 0x1

    return v4

    .line 77
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 81
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    .line 82
    .local v27, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 88
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 91
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v4, 0x1

    return v4

    .line 97
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 101
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 102
    .local v23, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v21, 0x1

    .line 111
    .local v21, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v4, 0x1

    return v4

    .line 110
    .end local v21    # "_arg0":Z
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 117
    :sswitch_7
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v21, 0x1

    .line 120
    .restart local v21    # "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v4, 0x1

    return v4

    .line 119
    .end local v21    # "_arg0":Z
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 126
    :sswitch_8
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v21, 0x1

    .line 129
    .restart local v21    # "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    return v4

    .line 128
    .end local v21    # "_arg0":Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    .line 135
    :sswitch_9
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v35

    .line 137
    .local v35, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v35, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v4, 0x1

    return v4

    .line 138
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 143
    .end local v35    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 147
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 148
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    .line 149
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v35, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v4, 0x1

    return v4

    .line 150
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 155
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v35    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v35

    .line 157
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v35, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v4, 0x1

    return v4

    .line 158
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 163
    .end local v35    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    :sswitch_d
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 173
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 179
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v6, 0x1

    .line 181
    .local v6, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v7, 0x1

    .line 183
    .local v7, "_arg2":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    .line 185
    .local v8, "_arg3":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v9, 0x1

    .line 187
    .local v9, "_arg4":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v10, 0x1

    .line 189
    .local v10, "_arg5":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v11, 0x1

    .line 191
    .local v11, "_arg6":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/4 v12, 0x1

    .line 193
    .local v12, "_arg7":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg8":[Ljava/lang/String;
    move-object/from16 v4, p0

    .line 194
    invoke-virtual/range {v4 .. v13}, Landroid/app/backup/IBackupManager$Stub;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v4, 0x1

    return v4

    .line 176
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":Z
    .end local v12    # "_arg7":Z
    .end local v13    # "_arg8":[Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 179
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_7

    .line 181
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Z
    goto :goto_8

    .line 183
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_9

    .line 185
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Z
    goto :goto_a

    .line 187
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Z
    goto :goto_b

    .line 189
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Z
    goto :goto_c

    .line 191
    :cond_d
    const/4 v12, 0x0

    .restart local v12    # "_arg7":Z
    goto :goto_d

    .line 200
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":Z
    .end local v12    # "_arg7":Z
    :sswitch_e
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 203
    .local v22, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackup([Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v4, 0x1

    return v4

    .line 209
    .end local v22    # "_arg0":[Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 212
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 217
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/backup/IBackupManager$Stub;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v4, 0x1

    return v4

    .line 215
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_e

    .line 223
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_10
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 227
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v6, 0x1

    .line 229
    .restart local v6    # "_arg1":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 231
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 233
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v19

    .local v19, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v14, p0

    move/from16 v16, v6

    .line 234
    invoke-virtual/range {v14 .. v19}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v4, 0x1

    return v4

    .line 227
    .end local v6    # "_arg1":Z
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_f

    .line 240
    .end local v6    # "_arg1":Z
    .end local v15    # "_arg0":I
    :sswitch_11
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v34

    .line 242
    .local v34, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    const/4 v4, 0x1

    return v4

    .line 248
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v36

    .line 250
    .local v36, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 252
    const/4 v4, 0x1

    return v4

    .line 256
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v36

    .line 258
    .restart local v36    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 260
    const/4 v4, 0x1

    return v4

    .line 264
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 267
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 268
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    const/4 v4, 0x1

    return v4

    .line 274
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 277
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    .line 278
    .local v33, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v33, :cond_10

    .line 280
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    :goto_10
    const/4 v4, 0x1

    return v4

    .line 284
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 290
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 293
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 294
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    const/4 v4, 0x1

    return v4

    .line 300
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 303
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    .line 304
    .restart local v33    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v33, :cond_11

    .line 306
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :goto_11
    const/4 v4, 0x1

    return v4

    .line 310
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 316
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/content/Intent;
    :sswitch_18
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 319
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 320
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 326
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 330
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 331
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v32

    .line 332
    .local v32, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v32, :cond_12

    invoke-interface/range {v32 .. v32}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 334
    const/4 v4, 0x1

    return v4

    .line 333
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 338
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Landroid/app/backup/IRestoreSession;
    :sswitch_1a
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 342
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 343
    .local v24, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v4, 0x1

    return v4

    .line 349
    .end local v15    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_1b
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 353
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v6, 0x1

    .line 354
    .local v6, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v4, 0x1

    return v4

    .line 353
    .end local v6    # "_arg1":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_13

    .line 360
    .end local v15    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 363
    .restart local v15    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v35

    .line 364
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v35, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v4, 0x1

    return v4

    .line 365
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 370
    .end local v15    # "_arg0":I
    .end local v35    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 373
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v30

    .line 374
    .local v30, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    move-object/from16 v0, p3

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    const/4 v4, 0x1

    return v4

    .line 380
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":J
    :sswitch_1e
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 383
    .restart local v20    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v35

    .line 384
    .restart local v35    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v35, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v4, 0x1

    return v4

    .line 385
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 390
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 394
    .restart local v22    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v26

    .line 395
    .local v26, "_arg1":Landroid/app/backup/IBackupObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I

    move-result v29

    .line 396
    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/4 v4, 0x1

    return v4

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
