.class public abstract Lcom/intermedia/injection/UserObjectGraph;
.super Ljava/lang/Object;
.source "UserObjectGraph.java"


# static fields
.field private static userComponent:Lcom/intermedia/injection/UserComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/ApplicationComponent;->newUserComponent()Lcom/intermedia/injection/UserComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/injection/UserComponent$Builder;->build()Lcom/intermedia/injection/UserComponent;

    move-result-object v0

    sput-object v0, Lcom/intermedia/injection/UserObjectGraph;->userComponent:Lcom/intermedia/injection/UserComponent;

    return-void
.end method

.method public static get()Lcom/intermedia/injection/UserComponent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 12
    sget-object v0, Lcom/intermedia/injection/UserObjectGraph;->userComponent:Lcom/intermedia/injection/UserComponent;

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/intermedia/injection/UserObjectGraph;->userComponent:Lcom/intermedia/injection/UserComponent;

    return-object v0
.end method
