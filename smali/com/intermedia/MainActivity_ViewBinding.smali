.class public Lcom/intermedia/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/intermedia/MainActivity;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0, p1, p1}, Lcom/intermedia/MainActivity_ViewBinding;-><init>(Lcom/intermedia/MainActivity;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/MainActivity;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007d

    .line 34
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/MainActivity;->heartNoLivesColor:I

    const v1, 0x7f060089

    .line 35
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/intermedia/MainActivity;->hqRedColor:I

    const p2, 0x7f110039

    .line 36
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/MainActivity;->unableToLoadImageString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/MainActivity;Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/intermedia/MainActivity_ViewBinding;-><init>(Lcom/intermedia/MainActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method
