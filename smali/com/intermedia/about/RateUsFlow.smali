.class public Lcom/intermedia/about/RateUsFlow;
.super Ljava/lang/Object;
.source "RateUsFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/about/RateUsFlow$ViewHost;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$start$0$RateUsFlow(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iget-object p0, p0, Lcom/intermedia/about/RateUsFlow$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 28
    invoke-static {p1}, Lcom/intermedia/util/PlayStoreUtils;->startPlayStoreIntent(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static final synthetic lambda$start$1$RateUsFlow(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    iget-object p0, p0, Lcom/intermedia/about/RateUsFlow$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    invoke-static {p1, p2}, Lcom/intermedia/util/reporting/EmailBugReporter;->startFeedback(Landroid/app/Activity;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    new-instance v0, Lcom/intermedia/about/RateUsFlow$ViewHost;

    .line 21
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0077

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/about/RateUsFlow$ViewHost;-><init>(Landroid/view/View;)V

    .line 23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/intermedia/about/RateUsFlow$ViewHost;->container:Landroid/view/View;

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/intermedia/about/RateUsFlow$ViewHost;->iLoveHQButton:Landroid/widget/Button;

    new-instance v3, Lcom/intermedia/about/RateUsFlow$$Lambda$0;

    invoke-direct {v3, v0, p0, v1}, Lcom/intermedia/about/RateUsFlow$$Lambda$0;-><init>(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v2, v0, Lcom/intermedia/about/RateUsFlow$ViewHost;->reportIssueButton:Landroid/widget/Button;

    new-instance v3, Lcom/intermedia/about/RateUsFlow$$Lambda$1;

    invoke-direct {v3, v0, p0, p1, v1}, Lcom/intermedia/about/RateUsFlow$$Lambda$1;-><init>(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
