.class Lcom/lenovo/internal/app/WindowDecorActionBar$4;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Llenovo/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1831
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1832
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/widget/ActionMenuView;

    .line 1833
    .local v0, "menuview":Llenovo/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 1834
    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuView;->onPageScrollStateChanged(I)V

    .line 1837
    .end local v0    # "menuview":Llenovo/widget/ActionMenuView;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1812
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/widget/ActionMenuView;

    .line 1813
    .local v0, "menuview":Llenovo/widget/ActionMenuView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v1, v1, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v1}, Llenovo/view/ViewPager;->isUpdateMenuWhenScroller()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1814
    invoke-virtual {v0, p1, p2, p3}, Llenovo/widget/ActionMenuView;->onPageScrolled(IFI)V

    .line 1817
    .end local v0    # "menuview":Llenovo/widget/ActionMenuView;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabScroller(IF)V

    .line 1819
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getDescendantFocusability()I

    move-result v0

    .line 1824
    .local v0, "oldFocusability":I
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v1

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setDescendantFocusability(I)V

    .line 1825
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v2, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1826
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setDescendantFocusability(I)V

    .line 1827
    return-void
.end method
