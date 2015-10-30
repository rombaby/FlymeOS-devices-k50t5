.class public Lcom/mediatek/widget/DefaultAccountPickerDialog;
.super Landroid/app/DialogFragment;
.source "DefaultAccountPickerDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAccountPickerDialog"

.field private static sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

.field private static sSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sSelection:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-direct {v0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    .line 44
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sSelection:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 36
    sput p0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sSelection:I

    return p0
.end method

.method static synthetic access$100()Lcom/mediatek/widget/DefaultAccountPickerAdapter;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    return-object v0
.end method

.method public static build(Landroid/content/Context;)Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "dialogFragment":Lcom/mediatek/widget/DefaultAccountPickerDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x80500cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 71
    sget-object v1, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    sget v2, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sSelection:I

    new-instance v3, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;-><init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/mediatek/widget/DefaultAccountPickerDialog$2;

    invoke-direct {v2, p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog$2;-><init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;

    invoke-direct {v2, p0}, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;-><init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setData(Ljava/util/List;)Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)",
            "Lcom/mediatek/widget/DefaultAccountPickerDialog;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    sget-object v0, Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->setItemData(Ljava/util/List;)V

    .line 63
    return-object p0
.end method
