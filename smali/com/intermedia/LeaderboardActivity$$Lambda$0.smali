.class final synthetic Lcom/intermedia/LeaderboardActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/adapters/LeaderboardAdapter;


# direct methods
.method private constructor <init>(Lcom/intermedia/adapters/LeaderboardAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/LeaderboardActivity$$Lambda$0;->arg$1:Lcom/intermedia/adapters/LeaderboardAdapter;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/adapters/LeaderboardAdapter;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/LeaderboardActivity$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/LeaderboardActivity$$Lambda$0;-><init>(Lcom/intermedia/adapters/LeaderboardAdapter;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity$$Lambda$0;->arg$1:Lcom/intermedia/adapters/LeaderboardAdapter;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/intermedia/adapters/LeaderboardAdapter;->takeLeaderData(Ljava/util/List;)V

    return-void
.end method
