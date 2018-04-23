.class final synthetic Lcom/intermedia/user/UserRepository$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/UserRepository$$Lambda$2;->arg$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/user/UserRepository$$Lambda$2;->arg$1:Ljava/lang/String;

    check-cast p1, Lcom/intermedia/model/HQUser;

    invoke-static {v0, p1}, Lcom/intermedia/user/UserRepository;->lambda$saveAvatar$1$UserRepository(Ljava/lang/String;Lcom/intermedia/model/HQUser;)Lcom/intermedia/model/HQUser;

    move-result-object p1

    return-object p1
.end method
