.class final synthetic Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final arg$1:Lcom/intermedia/config/LoggedOutConfigRepository;

.field private final arg$2:Lcom/intermedia/model/config/LoggedOutConfig;


# direct methods
.method constructor <init>(Lcom/intermedia/config/LoggedOutConfigRepository;Lcom/intermedia/model/config/LoggedOutConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;->arg$1:Lcom/intermedia/config/LoggedOutConfigRepository;

    iput-object p2, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;->arg$2:Lcom/intermedia/model/config/LoggedOutConfig;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;->arg$1:Lcom/intermedia/config/LoggedOutConfigRepository;

    iget-object v1, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;->arg$2:Lcom/intermedia/model/config/LoggedOutConfig;

    invoke-virtual {v0, v1}, Lcom/intermedia/config/LoggedOutConfigRepository;->lambda$saveConfig$1$LoggedOutConfigRepository(Lcom/intermedia/model/config/LoggedOutConfig;)V

    return-void
.end method
