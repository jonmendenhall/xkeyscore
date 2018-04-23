.class public Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.java"


# static fields
.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Iterator<",
            "*>;)[TT;"
        }
    .end annotation

    .line 66
    array-length v0, p0

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    array-length v1, p0

    if-ne v0, v1, :cond_2

    .line 70
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x3

    const v3, 0x7fffffff

    if-gt v2, v1, :cond_1

    if-ne v1, v3, :cond_0

    .line 73
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string p1, "Required array size too large"

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    move v2, v3

    .line 77
    :cond_1
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, v0

    move v0, v1

    goto :goto_0

    .line 82
    :cond_3
    array-length p1, p0

    if-ne v0, p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget-object p0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object p0

    .line 33
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, p0}, Lkotlin/jvm/internal/CollectionToArray;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;[TT;)[TT;"
        }
    .end annotation

    .line 47
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 48
    array-length v1, p1

    if-lt v1, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 53
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq p1, v0, :cond_1

    .line 56
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 57
    aput-object p0, v0, v1

    return-object v0

    .line 60
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0, p0}, Lkotlin/jvm/internal/CollectionToArray;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v0

    :cond_4
    return-object v0
.end method
