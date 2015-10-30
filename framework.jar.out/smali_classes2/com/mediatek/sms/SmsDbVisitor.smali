.class public Lcom/mediatek/sms/SmsDbVisitor;
.super Ljava/lang/Object;
.source "SmsDbVisitor.java"


# static fields
.field private static final APST_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.apst.target"

.field private static final BACKUPRESTOR_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.backuprestore"

.field private static final DATATRANSFER_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.datatransfer"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "[SmsDbVisitor]"

.field private static final PHONEPRIVACY_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.ppl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.mediatek.datatransfer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.mediatek.apst.target"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.mediatek.ppl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.mediatek.backuprestore"

    aput-object v2, v0, v1

    return-object v0
.end method
