.class Llenovo/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/view/ViewPager;


# direct methods
.method private constructor <init>(Llenovo/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2940
    iput-object p1, p0, Llenovo/view/ViewPager$PagerObserver;->this$0:Llenovo/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/view/ViewPager;Llenovo/view/ViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/view/ViewPager;
    .param p2, "x1"    # Llenovo/view/ViewPager$1;

    .prologue
    .line 2940
    invoke-direct {p0, p1}, Llenovo/view/ViewPager$PagerObserver;-><init>(Llenovo/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2943
    iget-object v0, p0, Llenovo/view/ViewPager$PagerObserver;->this$0:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->dataSetChanged()V

    .line 2944
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2947
    iget-object v0, p0, Llenovo/view/ViewPager$PagerObserver;->this$0:Llenovo/view/ViewPager;

    invoke-virtual {v0}, Llenovo/view/ViewPager;->dataSetChanged()V

    .line 2948
    return-void
.end method
