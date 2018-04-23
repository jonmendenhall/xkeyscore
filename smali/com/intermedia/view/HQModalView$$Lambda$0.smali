.class final synthetic Lcom/intermedia/view/HQModalView$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/view/HQModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/HQModalView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/HQModalView$$Lambda$0;->arg$1:Lcom/intermedia/view/HQModalView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/HQModalView$$Lambda$0;->arg$1:Lcom/intermedia/view/HQModalView;

    invoke-virtual {v0}, Lcom/intermedia/view/HQModalView;->lambda$dismiss$0$HQModalView()V

    return-void
.end method
