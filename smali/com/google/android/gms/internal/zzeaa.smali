.class public final Lcom/google/android/gms/internal/zzeaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegz;


# static fields
.field private static final zzfhj:Ljava/nio/charset/Charset;


# instance fields
.field private final zzmlq:Landroid/database/sqlite/SQLiteDatabase;

.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private zzmls:Z

.field private zzmlt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzeaa;->zzfhj:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzedc;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlt:J

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Persistence"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzedc;->zzpv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzeaa;->zzal(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static zza(Lcom/google/android/gms/internal/zzedk;Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Extracting split nodes needs to start with path prefix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sub-int v3, v0, p2

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".part-"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Run did not finish with all parts"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sub-int/2addr v0, p2

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;)I
    .locals 5

    const-string v0, "path >= ? AND path < ?"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeaa;->zzpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object v1, v3, p2

    invoke-virtual {v2, p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzedk;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeaa;->zzpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ? OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzedk;->zzbwj()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " OR (path > ? AND path < ?)"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v7, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    aput-object v1, v7, p1

    const-string v10, "path"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "serverCache"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzedk;I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".part-%04d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzedk;JLjava/lang/String;[B)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "writes"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v0, p5

    const/4 v1, 0x5

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    invoke-static {p5, v2}, Lcom/google/android/gms/internal/zzeaa;->zzf([BI)Ljava/util/List;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "path"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "part"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "node"

    invoke-interface {p5, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "writes"

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "path"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "part"

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "node"

    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "writes"

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzeha;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/zzeha;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelq<",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;>;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeab;

    invoke-direct {v2, v7, v8}, Lcom/google/android/gms/internal/zzeab;-><init>(Lcom/google/android/gms/internal/zzeaa;Lcom/google/android/gms/internal/zzehm;)V

    invoke-virtual {v9, v1, v2}, Lcom/google/android/gms/internal/zzeha;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzehp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v4, "Need to rewrite %d nodes below path %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6, v0}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/zzeaa;->zzb(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    new-instance v10, Lcom/google/android/gms/internal/zzeac;

    move-object v0, v10

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeac;-><init>(Lcom/google/android/gms/internal/zzeaa;Lcom/google/android/gms/internal/zzehm;Ljava/util/List;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {v9, v6, v10}, Lcom/google/android/gms/internal/zzeha;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzehp;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/zzeha;->zzd(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v5

    move-object v11, p2

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/zzehm;->zze(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v4

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzeha;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    const-string p3, "serverCache"

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/zzeaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;)I

    move-result p3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)I

    move-result p2

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v2

    move v3, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzekc;

    const-string v5, "serverCache"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/internal/zzeaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)I

    move-result v4

    add-int/2addr p3, v4

    goto :goto_0

    :cond_1
    move p2, p3

    move p3, v3

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Persisted a total of %d rows and deleted %d rows for a set at %s in %dms"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    const/4 p2, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p2

    const/4 p1, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static zzal(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzead;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzead;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzead;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "PRAGMA locking_mode = EXCLUSIVE"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz p1, :cond_0

    const-string p1, "Failed to gain exclusive lock to Firebase Database\'s offline persistence. This generally means you are using Firebase Database from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing FirebaseDatabase in your Application class. If you are intentionally using Firebase Database from multiple processes, you can only enable offline persistence (i.e. call setPersistenceEnabled(true)) in one of them."

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    throw p0
.end method

.method private static zzan([B)Lcom/google/android/gms/internal/zzekd;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzeaa;->zzfhj:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelh;->zzqc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzeaa;->zzfhj:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v2, "Could not deserialize node: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static zzar(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-array v0, v2, [B

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "path"

    const-string v8, "value"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v10, v15, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v7

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v17, v7

    move v7, v14

    move/from16 v18, v7

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_6

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, ".part-0000"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v14, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    move-wide/from16 v20, v10

    add-int/lit8 v10, v19, -0xa

    const/4 v11, 0x0

    invoke-virtual {v13, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v10}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v3, v7}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;Ljava/util/List;I)I

    move-result v10

    iget-object v11, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const/16 v13, 0x2a

    move-object/from16 v22, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Loading split node with "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " parts."

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v23, v8

    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v11, v13, v9, v8}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-wide/from16 v23, v8

    move-object/from16 v22, v14

    :goto_2
    add-int/2addr v10, v7

    invoke-interface {v4, v7, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeaa;->zzar(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeaa;->zzan([B)Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    const/4 v8, 0x1

    add-int/lit8 v9, v10, -0x1

    move-object/from16 v14, v22

    goto :goto_3

    :cond_2
    move-wide/from16 v23, v8

    move-wide/from16 v20, v10

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lcom/google/android/gms/internal/zzeaa;->zzan([B)Lcom/google/android/gms/internal/zzekd;

    move-result-object v8

    new-instance v14, Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v14, v9}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    move v9, v7

    move-object v7, v8

    :goto_3
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzedk;->zzbwk()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzedk;->zzbwk()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v12, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v8

    if-eqz v8, :cond_4

    xor-int/lit8 v8, v18, 0x1

    const-string v10, "Descendants of path must come after ancestors."

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v8

    move-object/from16 v10, v17

    invoke-interface {v10, v8, v7}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    move-object/from16 v17, v7

    const/4 v7, 0x1

    const/16 v18, 0x1

    :goto_5
    add-int/lit8 v8, v9, 0x1

    move v7, v8

    move-wide/from16 v10, v20

    move-wide/from16 v8, v23

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Loading an unrelated row with path %s for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move-wide/from16 v23, v8

    move-wide/from16 v20, v10

    move-object/from16 v10, v17

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzedk;

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v10, v8, v7}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v10

    goto :goto_6

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    iget-object v3, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v5, "Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v6, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/zzelo;->zzo(Lcom/google/android/gms/internal/zzekd;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v6, v9

    const/4 v4, 0x2

    aput-object v2, v6, v4

    const/4 v2, 0x3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x4

    move-wide/from16 v11, v23

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x5

    move-wide/from16 v11, v20

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8
    return-object v10

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static zzbe(Ljava/lang/Object;)[B
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzelh;->zzbt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/zzeaa;->zzfhj:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize leaf node"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzbtf()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmls:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)I
    .locals 7

    invoke-static {p2}, Lcom/google/android/gms/internal/zzelo;->zzn(Lcom/google/android/gms/internal/zzekd;)J

    move-result-wide v0

    instance-of v2, p2, Lcom/google/android/gms/internal/zzeji;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-wide/16 v4, 0x4000

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v5, "Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x2

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzeaa;->zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    add-int/lit8 v4, v4, 0x1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeaa;->zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    add-int/2addr v4, v3

    return v4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeaa;->zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return v3
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedk;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 7

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeaa;->zzbe(Ljava/lang/Object;)[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x5

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzeaa;->zzf([BI)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x2d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Saving huge leaf node with "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " parts."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v3, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "path"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "serverCache"

    invoke-virtual {v4, v5, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "path"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "serverCache"

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method private static zzf([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    const/high16 v0, 0x40000

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    array-length v4, p0

    mul-int v5, v3, v0

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v6, v4, [B

    invoke-static {p0, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static zzpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x30

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzr(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final beginTransaction()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmls:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v2, "Starting transaction."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmls:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlt:J

    return-void
.end method

.method public final endTransaction()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmls:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlt:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v4, "Transaction completed. Elapsed: %dms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeaa;->zzb(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id = ?"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzejg;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "key"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "trackedKeys"

    const/4 v9, 0x5

    invoke-virtual {v3, v7, v4, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Set %d tracked query keys for tracked query %d in %dms"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 p1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zza(JLjava/util/Set;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "id = ? AND key = ?"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzejg;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "trackedKeys"

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v9, v10, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzejg;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "key"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "trackedKeys"

    const/4 v10, 0x5

    invoke-virtual {v3, v9, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v8

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v7

    const/4 p1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzecy;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const-string v6, "serverCache"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/zzeaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;)I

    move-result v6

    add-int/2addr v3, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p0, v6, v5}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v0, "Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;J)V
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzecy;->zzcn(Z)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeaa;->zzbe(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v7, "m"

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;JLjava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string p4, "Persisted user merge in %dms"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeha;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzeha;->zzbxs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v0, "rowid"

    const-string v1, "path"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzehm;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {v2, v11}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    move-object v12, v1

    move-object v4, v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    new-instance v3, Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v1, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x43

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v6, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v6, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "We are pruning at "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but we have data stored higher up at "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Ignoring."

    :goto_1
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/zzejc;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzeha;->zzv(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v6, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v12

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzeha;->zzw(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v4

    goto :goto_0

    :cond_3
    iget-object v1, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x58

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v6, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v6, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "We are pruning at "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and have data at "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " that isn\'t marked for pruning or keeping. Ignoring."

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    move-object v0, v7

    move-object v1, v8

    move-object v3, v12

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzeha;Ljava/util/List;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzehm;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeaa;->zzr(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "rowid IN ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "serverCache"

    invoke-virtual {v2, v3, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v1, v15

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v14

    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/zzelq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzelq;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzelq;->zzcbg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzekd;

    invoke-direct {v7, v5, v4}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)I

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_6
    move v0, v14

    move v1, v0

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v4, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v7, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v5, "Pruned %d rows with %d nodes resaved in %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v11, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;J)V
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeaa;->zzbe(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v7, "o"

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;JLjava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string p4, "Persisted user overwrite in %dms"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehe;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "id"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzehe;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "path"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzeaa;->zzc(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "queryParams"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeih;->zzbyw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lastUse"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzehe;->zzmyo:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "complete"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzehe;->complete:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "active"

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzehe;->zziyi:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v0, "Saved new tracked query in %dms"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzeaa;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V

    return-void
.end method

.method public final zzbl(J)V
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    const-string v4, "id = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Deleted %d write(s) with writeId %d in %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v5

    const/4 p1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v6, p1

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzbm(J)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id = ?"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p2, "id = ?"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedKeys"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final zzbn(J)V
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "active = 1"

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "active"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "lastUse"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x5

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Reset active tracked queries in %dms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzbo(J)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeaa;->zze(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final zzbtb()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    const-string v1, "path"

    const-string v2, "type"

    const-string v3, "part"

    const-string v4, "node"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "writes"

    const-string v12, "id, part"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    new-instance v11, Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v8, v12, v9

    if-eqz v8, :cond_1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    invoke-static {v5}, Lcom/google/android/gms/internal/zzeaa;->zzar(Ljava/util/List;)[B

    move-result-object v5

    :goto_1
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/zzeaa;->zzfhj:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/google/android/gms/internal/zzelh;->zzqc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "o"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v12

    new-instance v4, Lcom/google/android/gms/internal/zzegd;

    const/4 v13, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzegd;-><init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V

    goto :goto_2

    :cond_3
    const-string v6, "m"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzecy;->zzak(Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzegd;

    invoke-direct {v5, v9, v10, v11, v4}, Lcom/google/android/gms/internal/zzegd;-><init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    move-object v4, v5

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got invalid write type: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Loaded %d writes in %dms"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load writes"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final zzbtc()J
    .locals 5

    const-string v0, "SELECT sum(length(%s) + length(%s)) FROM %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "value"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "path"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "serverCache"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t read database result!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public final zzbtd()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "id"

    const-string v3, "path"

    const-string v4, "queryParams"

    const-string v5, "lastUse"

    const-string v6, "complete"

    const-string v7, "active"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "trackedQueries"

    const-string v15, "id"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    new-instance v6, Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v7}, Lcom/google/android/gms/internal/zzelh;->zzqb(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7}, Lcom/google/android/gms/internal/zzeih;->zzam(Ljava/util/Map;)Lcom/google/android/gms/internal/zzeih;

    move-result-object v7

    new-instance v13, Lcom/google/android/gms/internal/zzeik;

    invoke-direct {v13, v6, v7}, Lcom/google/android/gms/internal/zzeik;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;)V

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v16, v8

    goto :goto_1

    :cond_0
    move/from16 v16, v9

    :goto_1
    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    move/from16 v17, v8

    goto :goto_2

    :cond_1
    move/from16 v17, v9

    :goto_2
    new-instance v6, Lcom/google/android/gms/internal/zzehe;

    move-object v10, v6

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Loaded %d tracked queries in %dms"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public final zzbte()V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeaa;->zzbtf()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Deleted %d (all) write(s) in %dms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const/4 v2, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/util/Set;)Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v0, "id IN ("

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeaa;->zzr(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v13, 0x1

    add-int/2addr v2, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlq:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedKeys"

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeaa;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v6, "Loaded %d tracked queries keys for tracked queries %s in %dms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v13

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, p1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1
.end method
