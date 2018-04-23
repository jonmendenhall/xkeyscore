.class final synthetic Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

.field private final arg$2:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;


# direct methods
.method constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;->arg$1:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

    iput-object p2, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;->arg$2:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;->arg$1:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;

    iget-object v1, p0, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$$Lambda$1;->arg$2:Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder;->lambda$new$1$LeaderboardAdapter$ToggleButtonViewHolder(Lcom/intermedia/adapters/LeaderboardAdapter$ToggleButtonViewHolder$Delegate;Landroid/view/View;)V

    return-void
.end method
