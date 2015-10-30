.class final Lcom/mediatek/mmsdk/BaseParameters$1;
.super Ljava/lang/Object;
.source "BaseParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/BaseParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/mmsdk/BaseParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/mmsdk/BaseParameters;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    const-string v0, "BaseParameters"

    const-string v1, "createFromParcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Lcom/mediatek/mmsdk/BaseParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>(Landroid/os/Parcel;Lcom/mediatek/mmsdk/BaseParameters$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/mmsdk/BaseParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/mmsdk/BaseParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/mmsdk/BaseParameters;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 150
    const-string v0, "BaseParameters"

    const-string v1, "newArray"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-array v0, p1, [Lcom/mediatek/mmsdk/BaseParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/mmsdk/BaseParameters$1;->newArray(I)[Lcom/mediatek/mmsdk/BaseParameters;

    move-result-object v0

    return-object v0
.end method
