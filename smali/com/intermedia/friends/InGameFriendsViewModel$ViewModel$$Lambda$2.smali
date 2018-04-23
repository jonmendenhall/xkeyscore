.class final synthetic Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;


# direct methods
.method constructor <init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$2;->arg$1:Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$2;->arg$1:Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->lambda$new$0$InGameFriendsViewModel$ViewModel(Ljava/util/List;)V

    return-void
.end method
