.class public final Landroid/app/AlarmManager$AlarmStats;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlarmStats"
.end annotation


# instance fields
.field public app:Ljava/lang/String;

.field public count:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "count"    # [I

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Landroid/app/AlarmManager$AlarmStats;->app:Ljava/lang/String;

    .line 780
    iput-object p2, p0, Landroid/app/AlarmManager$AlarmStats;->count:[I

    .line 781
    return-void
.end method
