.class Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 303
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 304
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 356
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$300(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 357
    .local v1, "expandedItem":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 358
    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$300(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 359
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 360
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 361
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 362
    .local v3, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 363
    iput v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 369
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 360
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$100(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 317
    :goto_1
    return v1

    .line 312
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 317
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 321
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$100(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 323
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 324
    add-int/lit8 p1, p1, 0x1

    .line 326
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 321
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v2

    .line 337
    .local v2, "menu":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    .line 338
    .local v0, "checkable":Z
    if-nez p2, :cond_0

    .line 340
    if-nez v0, :cond_2

    .line 341
    new-instance p2, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/lenovo/internal/view/menu/ListMenuItemTextView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    move-object v1, p2

    .line 347
    check-cast v1, Lcom/lenovo/internal/view/menu/MenuView$ItemView;

    .line 348
    .local v1, "itemView":Lcom/lenovo/internal/view/menu/MenuView$ItemView;
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-boolean v3, v3, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 349
    check-cast v3, Lcom/lenovo/internal/view/menu/ListMenuItemView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 351
    :cond_1
    invoke-interface {v1, v2, v5}, Lcom/lenovo/internal/view/menu/MenuView$ItemView;->initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V

    .line 352
    return-object p2

    .line 343
    .end local v1    # "itemView":Lcom/lenovo/internal/view/menu/MenuView$ItemView;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$200(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x9040022

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 374
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 375
    return-void
.end method

.method public setMenuBuilder(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 309
    return-void
.end method
