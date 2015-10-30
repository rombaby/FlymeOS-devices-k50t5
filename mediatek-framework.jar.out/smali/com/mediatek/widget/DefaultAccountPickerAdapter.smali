.class public Lcom/mediatek/widget/DefaultAccountPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAccountPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/DefaultAccountPickerAdapter$1;,
        Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
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

    .line 79
    if-nez p2, :cond_0

    .line 80
    iget-object v3, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 81
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v3, 0x8070011

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;

    invoke-direct {v2, p0, v5}, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/widget/DefaultAccountPickerAdapter;Lcom/mediatek/widget/DefaultAccountPickerAdapter$1;)V

    .line 84
    .local v2, "viewHolder":Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    const v3, 0x811003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/widget/AccountItemView;

    iput-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    .line 85
    const v3, 0x811003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 86
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    .end local v1    # "inflator":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v0

    .line 93
    .local v0, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/widget/AccountItemView;->setAccountIcon(I)V

    .line 94
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 95
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->accountItem:Lcom/mediatek/widget/AccountItemView;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 97
    iget-object v3, v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 99
    return-object p2

    .line 88
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v2    # "viewHolder":Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/mediatek/widget/DefaultAccountPickerAdapter$ViewHolder;
    goto :goto_0
.end method

.method setActiveStatus(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 56
    .local v0, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    goto :goto_0

    .line 58
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    .line 59
    return-void
.end method

.method setItemData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->mData:Ljava/util/List;

    .line 49
    return-void
.end method
