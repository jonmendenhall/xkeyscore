.class public Lcom/intermedia/AboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/intermedia/AboutActivity;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 17
    invoke-direct {p0, p1, p1}, Lcom/intermedia/AboutActivity_ViewBinding;-><init>(Lcom/intermedia/AboutActivity;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/AboutActivity;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f06007d

    .line 32
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/intermedia/AboutActivity;->heartNoLivesColor:I

    const v0, 0x7f060089

    .line 33
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/intermedia/AboutActivity;->hqRedColor:I

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/AboutActivity;Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/intermedia/AboutActivity_ViewBinding;-><init>(Lcom/intermedia/AboutActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method
