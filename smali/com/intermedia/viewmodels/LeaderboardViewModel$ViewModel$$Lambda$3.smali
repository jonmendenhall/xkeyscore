.class final synthetic Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field static final $instance:Lio/reactivex/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$3;

    invoke-direct {v0}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$3;-><init>()V

    sput-object v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$3;->$instance:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;

    invoke-virtual {p1}, Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;->getData()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
