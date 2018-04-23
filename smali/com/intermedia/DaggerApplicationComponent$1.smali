.class Lcom/intermedia/DaggerApplicationComponent$1;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/DaggerApplicationComponent;->initialize(Lcom/intermedia/DaggerApplicationComponent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/injection/UserComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/DaggerApplicationComponent;


# direct methods
.method constructor <init>(Lcom/intermedia/DaggerApplicationComponent;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$1;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/intermedia/injection/UserComponent$Builder;
    .locals 3

    .line 225
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$1;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;-><init>(Lcom/intermedia/DaggerApplicationComponent;Lcom/intermedia/DaggerApplicationComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/intermedia/DaggerApplicationComponent$1;->get()Lcom/intermedia/injection/UserComponent$Builder;

    move-result-object v0

    return-object v0
.end method
