.class public Llenovo/app/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/IntentCompat$IntentCompatImplIcsMr1;,
        Llenovo/app/IntentCompat$IntentCompatImplHC;,
        Llenovo/app/IntentCompat$IntentCompatImplBase;,
        Llenovo/app/IntentCompat$IntentCompatImpl;
    }
.end annotation


# static fields
.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field private static final IMPL:Llenovo/app/IntentCompat$IntentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Llenovo/app/IntentCompat$IntentCompatImplIcsMr1;

    invoke-direct {v0}, Llenovo/app/IntentCompat$IntentCompatImplIcsMr1;-><init>()V

    sput-object v0, Llenovo/app/IntentCompat;->IMPL:Llenovo/app/IntentCompat$IntentCompatImpl;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 213
    sget-object v0, Llenovo/app/IntentCompat;->IMPL:Llenovo/app/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0}, Llenovo/app/IntentCompat$IntentCompatImpl;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    .prologue
    .line 241
    sget-object v0, Llenovo/app/IntentCompat;->IMPL:Llenovo/app/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0, p1}, Llenovo/app/IntentCompat$IntentCompatImpl;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 258
    sget-object v0, Llenovo/app/IntentCompat;->IMPL:Llenovo/app/IntentCompat$IntentCompatImpl;

    invoke-interface {v0, p0}, Llenovo/app/IntentCompat$IntentCompatImpl;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
