.class Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$1;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->initialize(Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/injection/BaseActivityComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;


# direct methods
.method constructor <init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$1;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/intermedia/injection/BaseActivityComponent$Builder;
    .locals 3

    .line 528
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$1;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;-><init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;Lcom/intermedia/DaggerApplicationComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$1;->get()Lcom/intermedia/injection/BaseActivityComponent$Builder;

    move-result-object v0

    return-object v0
.end method
