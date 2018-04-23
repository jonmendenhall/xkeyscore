.class public final Lcom/amazonaws/util/ImmutableMapParameter;
.super Ljava/lang/Object;
.source "ImmutableMapParameter.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DUPLICATED_KEY_MESSAGE:Ljava/lang/String; = "Duplicate keys are provided."

.field private static final UNMODIFIABLE_MESSAGE:Ljava/lang/String; = "This is an immutable map."


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/amazonaws/util/ImmutableMapParameter$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static builder()Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazonaws/util/ImmutableMapParameter$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;

    invoke-direct {v0}, Lcom/amazonaws/util/ImmutableMapParameter$Builder;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 87
    new-instance p1, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {p1, p0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    new-instance p0, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-static {v0, p4, p5}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    new-instance p0, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-static {v0, p4, p5}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-static {v0, p6, p7}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    new-instance p0, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-static {v0, p0, p1}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    invoke-static {v0, p2, p3}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    invoke-static {v0, p4, p5}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-static {v0, p6, p7}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    invoke-static {v0, p8, p9}, Lcom/amazonaws/util/ImmutableMapParameter;->putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    new-instance p0, Lcom/amazonaws/util/ImmutableMapParameter;

    invoke-direct {p0, v0}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private static putAndWarnDuplicateKeys(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 244
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate keys are provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is an immutable map."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 229
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is an immutable map."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 235
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is an immutable map."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 240
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is an immutable map."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
