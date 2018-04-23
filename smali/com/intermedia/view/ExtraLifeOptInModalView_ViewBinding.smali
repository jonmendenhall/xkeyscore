.class public final Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;
.super Lcom/intermedia/view/HQModalView_ViewBinding;
.source "ExtraLifeOptInModalView_ViewBinding.java"


# instance fields
.field private target:Lcom/intermedia/view/ExtraLifeOptInModalView;

.field private view2131362070:Landroid/view/View;

.field private view2131362087:Landroid/view/View;

.field private view2131362275:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/intermedia/view/ExtraLifeOptInModalView;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/intermedia/view/HQModalView_ViewBinding;-><init>(Lcom/intermedia/view/HQModalView;Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->target:Lcom/intermedia/view/ExtraLifeOptInModalView;

    const-string v0, "field \'progressBar\'"

    .line 30
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a00b3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/view/ExtraLifeOptInModalView;->progressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'useExtraLifeButton\' and method \'useExtraLifeButtonClicked\'"

    const v1, 0x7f0a01e3

    .line 31
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'useExtraLifeButton\'"

    .line 32
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/intermedia/view/ExtraLifeOptInModalView;->useExtraLifeButton:Landroid/widget/Button;

    .line 33
    iput-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362275:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$1;-><init>(Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;Lcom/intermedia/view/ExtraLifeOptInModalView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'dismiss\'"

    const v1, 0x7f0a0116

    .line 40
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362070:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$2;-><init>(Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;Lcom/intermedia/view/ExtraLifeOptInModalView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'dismiss\'"

    const v1, 0x7f0a0127

    .line 48
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362087:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$3;-><init>(Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;Lcom/intermedia/view/ExtraLifeOptInModalView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->target:Lcom/intermedia/view/ExtraLifeOptInModalView;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->target:Lcom/intermedia/view/ExtraLifeOptInModalView;

    .line 64
    iput-object v1, v0, Lcom/intermedia/view/ExtraLifeOptInModalView;->progressBar:Landroid/widget/ProgressBar;

    .line 65
    iput-object v1, v0, Lcom/intermedia/view/ExtraLifeOptInModalView;->useExtraLifeButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362275:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362275:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362070:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362070:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362087:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;->view2131362087:Landroid/view/View;

    .line 74
    invoke-super {p0}, Lcom/intermedia/view/HQModalView_ViewBinding;->unbind()V

    return-void
.end method
