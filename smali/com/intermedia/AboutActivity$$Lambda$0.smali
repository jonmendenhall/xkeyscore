.class final synthetic Lcom/intermedia/AboutActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/AboutActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/AboutActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/AboutActivity$$Lambda$0;->arg$1:Lcom/intermedia/AboutActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/AboutActivity$$Lambda$0;->arg$1:Lcom/intermedia/AboutActivity;

    check-cast p1, Lcom/intermedia/model/HQUser;

    invoke-virtual {v0, p1}, Lcom/intermedia/AboutActivity;->lambda$onCreate$0$AboutActivity(Lcom/intermedia/model/HQUser;)V

    return-void
.end method
