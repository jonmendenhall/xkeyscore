.class public final Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardAdapter$ToggleButtonViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;


# direct methods
.method public constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

    const-string v0, "field \'allTimeButton\'"

    .line 21
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0023

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->allTimeButton:Landroid/widget/Button;

    const-string v0, "field \'thisWeekButton\'"

    .line 22
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a01cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->thisWeekButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder_ViewBinding;->target:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

    .line 31
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->allTimeButton:Landroid/widget/Button;

    .line 32
    iput-object v1, v0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->thisWeekButton:Landroid/widget/Button;

    return-void
.end method
