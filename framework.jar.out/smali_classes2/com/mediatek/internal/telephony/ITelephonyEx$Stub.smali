.class public abstract Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.ITelephonyEx"

.field static final TRANSACTION_abortEnableDedicateBearer:I = 0x2a

.field static final TRANSACTION_broadcastIccUnlockIntent:I = 0x17

.field static final TRANSACTION_btSimapApduRequest:I = 0x10

.field static final TRANSACTION_btSimapConnectSIM:I = 0xe

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0xf

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x13

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x12

.field static final TRANSACTION_btSimapResetSIM:I = 0x11

.field static final TRANSACTION_configSimSwap:I = 0x1b

.field static final TRANSACTION_disableDedicateBearer:I = 0x28

.field static final TRANSACTION_enableDedicateBearer:I = 0x29

.field static final TRANSACTION_getAdnStorageInfo:I = 0x22

.field static final TRANSACTION_getCapSwitchManualList:I = 0x1e

.field static final TRANSACTION_getDeactivateCidArray:I = 0x2f

.field static final TRANSACTION_getDefaultBearerProperties:I = 0x2d

.field static final TRANSACTION_getIccCardType:I = 0x6

.field static final TRANSACTION_getLastDataConnectionFailCause:I = 0x2e

.field static final TRANSACTION_getLinkProperties:I = 0x30

.field static final TRANSACTION_getLocatedPlmn:I = 0x1f

.field static final TRANSACTION_getMvnoMatchType:I = 0x8

.field static final TRANSACTION_getMvnoPattern:I = 0x9

.field static final TRANSACTION_getNetworkHideState:I = 0x20

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0xc

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0xa

.field static final TRANSACTION_getNetworkOperatorNameUsingSub:I = 0xb

.field static final TRANSACTION_getNetworkOperatorUsingSub:I = 0xd

.field static final TRANSACTION_getPhoneCapability:I = 0x19

.field static final TRANSACTION_getScAddressUsingSubId:I = 0x24

.field static final TRANSACTION_getServiceState:I = 0x21

.field static final TRANSACTION_isAirplanemodeAvailableNow:I = 0x26

.field static final TRANSACTION_isCapSwitchManualEnabled:I = 0x1d

.field static final TRANSACTION_isCapabilitySwitching:I = 0x33

.field static final TRANSACTION_isDedicateBearer:I = 0x27

.field static final TRANSACTION_isFdnEnabled:I = 0x5

.field static final TRANSACTION_isPhbReady:I = 0x23

.field static final TRANSACTION_isRadioOffBySimManagement:I = 0x18

.field static final TRANSACTION_isSimSwapped:I = 0x1c

.field static final TRANSACTION_isTestIccCard:I = 0x7

.field static final TRANSACTION_modifyDedicateBearer:I = 0x2b

.field static final TRANSACTION_pcscfDiscovery:I = 0x31

.field static final TRANSACTION_queryNetworkLock:I = 0x1

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0x3

.field static final TRANSACTION_setDefaultBearerConfig:I = 0x2c

.field static final TRANSACTION_setLine1Number:I = 0x4

.field static final TRANSACTION_setPhoneCapability:I = 0x1a

.field static final TRANSACTION_setRadioCapability:I = 0x32

.field static final TRANSACTION_setScAddressUsingSubId:I = 0x25

.field static final TRANSACTION_setTrmForPhone:I = 0x35

.field static final TRANSACTION_simAkaAuthentication:I = 0x14

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x15

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x16

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2

.field static final TRANSACTION_switchSvlteRatMode:I = 0x34


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 741
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 49
    :sswitch_0
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v6

    .line 60
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_3
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v2, v7

    .line 89
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg1":Z
    :cond_1
    move v2, v0

    .line 88
    goto :goto_1

    .line 95
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLine1Number(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 103
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_5
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v6

    .line 113
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v6

    .line 133
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameUsingSub(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v6

    .line 185
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorUsingSub(I)Ljava/lang/String;

    move-result-object v6

    .line 195
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 206
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 207
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v2, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 214
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_f
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapDisconnectSIM()I

    move-result v6

    .line 222
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 228
    .end local v6    # "_result":I
    :sswitch_10
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "_arg1":Ljava/lang/String;
    new-instance v3, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 235
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 236
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    if-eqz v3, :cond_5

    .line 239
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v3, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 243
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_11
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 254
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 255
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    if-eqz v2, :cond_6

    .line 258
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-virtual {v2, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 262
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_12
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 273
    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 274
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    if-eqz v2, :cond_7

    .line 277
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v2, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 281
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_13
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOffSIM()I

    move-result v6

    .line 289
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v6    # "_result":I
    :sswitch_14
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 303
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 304
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v6

    .line 305
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 311
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_15
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 319
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 320
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v6

    .line 321
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 327
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_16
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 335
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 336
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v6

    .line 337
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 343
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_17
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->broadcastIccUnlockIntent(I)Z

    move-result v6

    .line 347
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v6, :cond_8

    move v0, v7

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 353
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_18
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v6

    .line 357
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v6, :cond_9

    move v0, v7

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_19
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getPhoneCapability(I)I

    move-result v6

    .line 367
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 373
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1a
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 377
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 378
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setPhoneCapability([I[I)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 384
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":[I
    :sswitch_1b
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v1, v7

    .line 387
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->configSimSwap(Z)Z

    move-result v6

    .line 388
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v6, :cond_a

    move v0, v7

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_b
    move v1, v0

    .line 386
    goto :goto_2

    .line 394
    :sswitch_1c
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSimSwapped()Z

    move-result v6

    .line 396
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v6, :cond_c

    move v0, v7

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v6    # "_result":Z
    :sswitch_1d
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapSwitchManualEnabled()Z

    move-result v6

    .line 404
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v6, :cond_d

    move v0, v7

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 410
    .end local v6    # "_result":Z
    :sswitch_1e
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCapSwitchManualList()[Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkHideState(I)I

    move-result v6

    .line 432
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 438
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_21
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v6

    .line 442
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v6, :cond_e

    .line 444
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 448
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 454
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_22
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v6

    .line 458
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 464
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[I
    :sswitch_23
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isPhbReady(I)Z

    move-result v6

    .line 468
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v6, :cond_f

    move v0, v7

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 474
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_24
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getScAddressUsingSubId(I)Landroid/os/Bundle;

    move-result-object v6

    .line 478
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v6, :cond_10

    .line 480
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 484
    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_25
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setScAddressUsingSubId(ILjava/lang/String;)Z

    move-result v6

    .line 496
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v6, :cond_11

    move v0, v7

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_26
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAirplanemodeAvailableNow()Z

    move-result v6

    .line 504
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v6, :cond_12

    move v0, v7

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 510
    .end local v6    # "_result":Z
    :sswitch_27
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 514
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 515
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isDedicateBearer(II)Z

    move-result v6

    .line 516
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v6, :cond_13

    move v0, v7

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 522
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_28
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->disableDedicateBearer(Ljava/lang/String;II)I

    move-result v6

    .line 530
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 536
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_29
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14

    move v2, v7

    .line 542
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 543
    sget-object v0, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/QosStatus;

    .line 549
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 550
    sget-object v0, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/TftStatus;

    .line 556
    .local v4, "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 557
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I

    move-result v6

    .line 558
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :cond_14
    move v2, v0

    .line 540
    goto :goto_3

    .line 546
    .restart local v2    # "_arg1":Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    goto :goto_4

    .line 553
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    goto :goto_5

    .line 564
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    :sswitch_2a
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 568
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 570
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->abortEnableDedicateBearer(Ljava/lang/String;II)I

    move-result v6

    .line 572
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_2b
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 582
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 583
    sget-object v0, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/QosStatus;

    .line 589
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 590
    sget-object v0, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/TftStatus;

    .line 596
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I

    move-result v6

    .line 598
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 586
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v4    # "_arg3":I
    .end local v6    # "_result":I
    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    goto :goto_6

    .line 593
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    goto :goto_7

    .line 604
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    :sswitch_2c
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 609
    sget-object v0, Lcom/mediatek/internal/telephony/DefaultBearerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    .line 615
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;I)I

    move-result v6

    .line 617
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 612
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :cond_19
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    goto :goto_8

    .line 623
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    :sswitch_2d
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDefaultBearerProperties(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v6

    .line 629
    .local v6, "_result":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    if-eqz v6, :cond_1a

    .line 631
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {v6, p3, v7}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 635
    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 641
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :sswitch_2e
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 645
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLastDataConnectionFailCause(Ljava/lang/String;I)I

    move-result v6

    .line 647
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 653
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_2f
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDeactivateCidArray(Ljava/lang/String;I)[I

    move-result-object v6

    .line 659
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 665
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[I
    :sswitch_30
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 669
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 670
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 671
    .local v6, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    if-eqz v6, :cond_1b

    .line 673
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 677
    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 683
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Landroid/net/LinkProperties;
    :sswitch_31
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 687
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 692
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 697
    .local v4, "_arg3":Landroid/os/Message;
    :goto_9
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->pcscfDiscovery(Ljava/lang/String;IILandroid/os/Message;)I

    move-result v6

    .line 698
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 695
    .end local v4    # "_arg3":Landroid/os/Message;
    .end local v6    # "_result":I
    :cond_1c
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Message;
    goto :goto_9

    .line 704
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Message;
    :sswitch_32
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    sget-object v8, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/RadioAccessFamily;

    .line 707
    .local v1, "_arg0":[Landroid/telephony/RadioAccessFamily;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6

    .line 708
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    if-eqz v6, :cond_1d

    move v0, v7

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 714
    .end local v1    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v6    # "_result":Z
    :sswitch_33
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v6

    .line 716
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    if-eqz v6, :cond_1e

    move v0, v7

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 722
    .end local v6    # "_result":Z
    :sswitch_34
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 725
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->switchSvlteRatMode(I)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 731
    .end local v1    # "_arg0":I
    :sswitch_35
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setTrmForPhone(II)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
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
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
