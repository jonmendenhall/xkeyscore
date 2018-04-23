.class public final Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;
.super Lcom/intermedia/viewholders/HQViewHolder;
.source "LeaderboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/adapters/LeaderboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToggleButtonViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;
    }
.end annotation


# static fields
.field public static final MODE_ALL_TIME:I = 0x0

.field public static final MODE_WEEKLY:I = 0x1


# instance fields
.field allTimeButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0023
    .end annotation
.end field

.field thisWeekButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01cb
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0, p1}, Lcom/intermedia/viewholders/HQViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 100
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->thisWeekButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 102
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->allTimeButton:Landroid/widget/Button;

    new-instance v0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$0;

    invoke-direct {v0, p0, p2}, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$0;-><init>(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->thisWeekButton:Landroid/widget/Button;

    new-instance v0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;

    invoke-direct {v0, p0, p2}, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;-><init>(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method final synthetic lambda$new$0$LeaderboardAdapter$ToggleButtonViewHolder(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    .line 103
    invoke-interface {p1, p2}, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;->allTimeButtonClicked(I)V

    .line 104
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->allTimeButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 105
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->thisWeekButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method final synthetic lambda$new$1$LeaderboardAdapter$ToggleButtonViewHolder(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x1

    .line 109
    invoke-interface {p1, p2}, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;->thisWeekButtonClicked(I)V

    .line 110
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->allTimeButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 111
    iget-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->thisWeekButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method
