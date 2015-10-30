.class public abstract Lcom/mediatek/mmsdk/IEffectHalClient$Stub;
.super Landroid/os/Binder;
.source "IEffectHalClient.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectHalClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectHalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectHalClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectHalClient"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addInputParameter:I = 0xf

.field static final TRANSACTION_addOutputParameter:I = 0x10

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_dequeueAndQueueBuf:I = 0x16

.field static final TRANSACTION_getCaptureRequirement:I = 0xa

.field static final TRANSACTION_getInputSurfaces:I = 0xd

.field static final TRANSACTION_getInputsyncMode:I = 0x12

.field static final TRANSACTION_getNameVersion:I = 0x7

.field static final TRANSACTION_getOutputsyncMode:I = 0x14

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_prepare:I = 0xb

.field static final TRANSACTION_release:I = 0xc

.field static final TRANSACTION_setBaseParameter:I = 0x15

.field static final TRANSACTION_setEffectListener:I = 0x8

.field static final TRANSACTION_setInputsyncMode:I = 0x11

.field static final TRANSACTION_setOutputSurfaces:I = 0xe

.field static final TRANSACTION_setOutputsyncMode:I = 0x13

.field static final TRANSACTION_setParameter:I = 0x9

.field static final TRANSACTION_start:I = 0x5

.field static final TRANSACTION_unconfigure:I = 0x4

.field static final TRANSACTION_uninit:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectHalClient;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/mmsdk/IEffectHalClient;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/mmsdk/IEffectHalClient$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 311
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->init()I

    move-result v10

    .line 52
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    .end local v10    # "_result":I
    :sswitch_2
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->uninit()I

    move-result v10

    .line 60
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    .end local v10    # "_result":I
    :sswitch_3
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->configure()I

    move-result v10

    .line 68
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    .end local v10    # "_result":I
    :sswitch_4
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->unconfigure()I

    move-result v10

    .line 76
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    .end local v10    # "_result":I
    :sswitch_5
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->start()J

    move-result-wide v10

    .line 84
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    .end local v10    # "_result":J
    :sswitch_6
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mmsdk/BaseParameters;

    .line 98
    .local v2, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v10

    .line 99
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v10    # "_result":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_1

    .line 105
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_7
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lcom/mediatek/mmsdk/EffectHalVersion;

    invoke-direct {v2}, Lcom/mediatek/mmsdk/EffectHalVersion;-><init>()V

    .line 108
    .local v2, "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getNameVersion(Lcom/mediatek/mmsdk/EffectHalVersion;)I

    move-result v10

    .line 109
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    if-eqz v2, :cond_1

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v2, p3, v1}, Lcom/mediatek/mmsdk/EffectHalVersion;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 116
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 122
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v10    # "_result":I
    :sswitch_8
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/mmsdk/IEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectListener;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setEffectListener(Lcom/mediatek/mmsdk/IEffectListener;)I

    move-result v10

    .line 126
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/IEffectListener;
    .end local v10    # "_result":I
    :sswitch_9
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 138
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 144
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_a
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    sget-object v1, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mmsdk/BaseParameters;

    .line 153
    .local v2, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    invoke-virtual {p0, v2, v7}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getCaptureRequirement(Lcom/mediatek/mmsdk/BaseParameters;Ljava/util/List;)I

    move-result v10

    .line 155
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 150
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    .end local v10    # "_result":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_3

    .line 162
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_b
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->prepare()I

    move-result v10

    .line 164
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    .end local v10    # "_result":I
    :sswitch_c
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->release()I

    move-result v10

    .line 172
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 178
    .end local v10    # "_result":I
    :sswitch_d
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getInputSurfaces(Ljava/util/List;)I

    move-result v10

    .line 182
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 185
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v10    # "_result":I
    :sswitch_e
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v1, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 194
    .restart local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    invoke-virtual {p0, v0, v7}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setOutputSurfaces(Ljava/util/List;Ljava/util/List;)I

    move-result v10

    .line 195
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/BaseParameters;>;"
    .end local v10    # "_result":I
    :sswitch_f
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    sget-object v1, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mmsdk/BaseParameters;

    .line 212
    .local v3, "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 214
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    .local v6, "_arg3":Z
    :goto_5
    move-object v1, p0

    .line 215
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->addInputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I

    move-result v10

    .line 216
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 209
    .end local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Z
    .end local v10    # "_result":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_4

    .line 214
    .restart local v4    # "_arg2":J
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 222
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v4    # "_arg2":J
    :sswitch_10
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    sget-object v1, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mmsdk/BaseParameters;

    .line 233
    .restart local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 235
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    .restart local v6    # "_arg3":Z
    :goto_7
    move-object v1, p0

    .line 236
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->addOutputParameter(ILcom/mediatek/mmsdk/BaseParameters;JZ)I

    move-result v10

    .line 237
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 230
    .end local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Z
    .end local v10    # "_result":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_6

    .line 235
    .restart local v4    # "_arg2":J
    :cond_6
    const/4 v6, 0x0

    goto :goto_7

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v4    # "_arg2":J
    :sswitch_11
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    .line 248
    .local v3, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setInputsyncMode(IZ)I

    move-result v10

    .line 249
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 247
    .end local v3    # "_arg1":Z
    .end local v10    # "_result":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 255
    .end local v2    # "_arg0":I
    :sswitch_12
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getInputsyncMode(I)Z

    move-result v10

    .line 259
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v10, :cond_8

    const/4 v1, 0x1

    :goto_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 260
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 265
    .end local v2    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_13
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    .line 270
    .restart local v3    # "_arg1":Z
    :goto_a
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setOutputsyncMode(IZ)I

    move-result v10

    .line 271
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    .end local v3    # "_arg1":Z
    .end local v10    # "_result":I
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 277
    .end local v2    # "_arg0":I
    :sswitch_14
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->getOutputsyncMode(I)Z

    move-result v10

    .line 281
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v10, :cond_a

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 282
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 287
    .end local v2    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_15
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 290
    sget-object v1, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mmsdk/BaseParameters;

    .line 295
    .local v2, "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :goto_c
    invoke-virtual {p0, v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->setBaseParameter(Lcom/mediatek/mmsdk/BaseParameters;)I

    move-result v10

    .line 296
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    .end local v10    # "_result":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    goto :goto_c

    .line 302
    .end local v2    # "_arg0":Lcom/mediatek/mmsdk/BaseParameters;
    :sswitch_16
    const-string v1, "com.mediatek.mmsdk.IEffectHalClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 305
    .local v8, "_arg0":J
    invoke-virtual {p0, v8, v9}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->dequeueAndQueueBuf(J)I

    move-result v10

    .line 306
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
