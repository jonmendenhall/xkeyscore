.class final synthetic Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;


# direct methods
.method constructor <init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$6;->arg$1:Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$6;->arg$1:Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;

    check-cast p1, Lcom/intermedia/model/message/ViewerUpdateMessage;

    invoke-virtual {v0, p1}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->lambda$new$4$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)V

    return-void
.end method
