.class Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
.super Llenovo/app/DrawerArrowDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Llenovo/app/ActionBarDrawerToggle$DrawerToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerArrowDrawableToggle"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "themedContext"    # Landroid/content/Context;

    .prologue
    .line 464
    invoke-direct {p0, p2}, Llenovo/app/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 465
    iput-object p1, p0, Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    .line 466
    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .prologue
    .line 484
    invoke-super {p0}, Llenovo/app/DrawerArrowDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 479
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 469
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    .line 474
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Llenovo/app/DrawerArrowDrawable;->setProgress(F)V

    .line 475
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    goto :goto_0
.end method
