.class public abstract Lcom/intermedia/injection/AppObjectGraph;
.super Ljava/lang/Object;
.source "AppObjectGraph.java"


# static fields
.field private static applicationComponent:Lcom/intermedia/ApplicationComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/intermedia/ApplicationComponent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    sget-object v0, Lcom/intermedia/injection/AppObjectGraph;->applicationComponent:Lcom/intermedia/ApplicationComponent;

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/intermedia/injection/AppObjectGraph;->applicationComponent:Lcom/intermedia/ApplicationComponent;

    return-object v0
.end method

.method public static isSet()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/intermedia/injection/AppObjectGraph;->applicationComponent:Lcom/intermedia/ApplicationComponent;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static set(Lcom/intermedia/ApplicationComponent;)V
    .locals 0
    .param p0    # Lcom/intermedia/ApplicationComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    sput-object p0, Lcom/intermedia/injection/AppObjectGraph;->applicationComponent:Lcom/intermedia/ApplicationComponent;

    return-void
.end method
