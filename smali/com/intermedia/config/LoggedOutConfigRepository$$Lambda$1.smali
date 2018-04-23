.class final synthetic Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lio/reactivex/processors/BehaviorProcessor;


# direct methods
.method private constructor <init>(Lio/reactivex/processors/BehaviorProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$1;->arg$1:Lio/reactivex/processors/BehaviorProcessor;

    return-void
.end method

.method static get$Lambda(Lio/reactivex/processors/BehaviorProcessor;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$1;-><init>(Lio/reactivex/processors/BehaviorProcessor;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$1;->arg$1:Lio/reactivex/processors/BehaviorProcessor;

    check-cast p1, Lcom/intermedia/model/config/LoggedOutConfig;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
