.class public interface abstract Lcom/amazonaws/services/s3/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final ABORT_DATE:Ljava/lang/String; = "x-amz-abort-date"

.field public static final ABORT_RULE_ID:Ljava/lang/String; = "x-amz-abort-rule-id"

.field public static final AMAZON_PREFIX:Ljava/lang/String; = "x-amz-"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CLOUD_FRONT_ID:Ljava/lang/String; = "X-Amz-Cf-Id"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COPY_PART_RANGE:Ljava/lang/String; = "x-amz-copy-source-range"

.field public static final COPY_SOURCE_IF_MATCH:Ljava/lang/String; = "x-amz-copy-source-if-match"

.field public static final COPY_SOURCE_IF_MODIFIED_SINCE:Ljava/lang/String; = "x-amz-copy-source-if-modified-since"

.field public static final COPY_SOURCE_IF_NO_MATCH:Ljava/lang/String; = "x-amz-copy-source-if-none-match"

.field public static final COPY_SOURCE_IF_UNMODIFIED_SINCE:Ljava/lang/String; = "x-amz-copy-source-if-unmodified-since"

.field public static final COPY_SOURCE_SERVER_SIDE_ENCRYPTION_CUSTOMER_ALGORITHM:Ljava/lang/String; = "x-amz-copy-source-server-side-encryption-customer-algorithm"

.field public static final COPY_SOURCE_SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY:Ljava/lang/String; = "x-amz-copy-source-server-side-encryption-customer-key"

.field public static final COPY_SOURCE_SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY_MD5:Ljava/lang/String; = "x-amz-copy-source-server-side-encryption-customer-key-MD5"

.field public static final CRYPTO_CEK_ALGORITHM:Ljava/lang/String; = "x-amz-cek-alg"

.field public static final CRYPTO_INSTRUCTION_FILE:Ljava/lang/String; = "x-amz-crypto-instr-file"

.field public static final CRYPTO_IV:Ljava/lang/String; = "x-amz-iv"

.field public static final CRYPTO_KEY:Ljava/lang/String; = "x-amz-key"

.field public static final CRYPTO_KEYWRAP_ALGORITHM:Ljava/lang/String; = "x-amz-wrap-alg"

.field public static final CRYPTO_KEY_V2:Ljava/lang/String; = "x-amz-key-v2"

.field public static final CRYPTO_TAG_LENGTH:Ljava/lang/String; = "x-amz-tag-len"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final EXPIRATION:Ljava/lang/String; = "x-amz-expiration"

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final EXTENDED_REQUEST_ID:Ljava/lang/String; = "x-amz-id-2"

.field public static final GET_OBJECT_IF_MATCH:Ljava/lang/String; = "If-Match"

.field public static final GET_OBJECT_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final GET_OBJECT_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final GET_OBJECT_IF_UNMODIFIED_SINCE:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final MATERIALS_DESCRIPTION:Ljava/lang/String; = "x-amz-matdesc"

.field public static final METADATA_DIRECTIVE:Ljava/lang/String; = "x-amz-metadata-directive"

.field public static final OBJECT_REPLICATION_STATUS:Ljava/lang/String; = "x-amz-replication-status"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final REDIRECT_LOCATION:Ljava/lang/String; = "x-amz-website-redirect-location"

.field public static final REQUESTER_CHARGED_HEADER:Ljava/lang/String; = "x-amz-request-charged"

.field public static final REQUESTER_PAYS_HEADER:Ljava/lang/String; = "x-amz-request-payer"

.field public static final REQUEST_ID:Ljava/lang/String; = "x-amz-request-id"

.field public static final RESTORE:Ljava/lang/String; = "x-amz-restore"

.field public static final S3_ALTERNATE_DATE:Ljava/lang/String; = "x-amz-date"

.field public static final S3_BUCKET_REGION:Ljava/lang/String; = "x-amz-bucket-region"

.field public static final S3_CANNED_ACL:Ljava/lang/String; = "x-amz-acl"

.field public static final S3_MFA:Ljava/lang/String; = "x-amz-mfa"

.field public static final S3_PARTS_COUNT:Ljava/lang/String; = "x-amz-mp-parts-count"

.field public static final S3_SERVING_REGION:Ljava/lang/String; = "x-amz-region"

.field public static final S3_TAGGING:Ljava/lang/String; = "x-amz-tagging"

.field public static final S3_TAGGING_COUNT:Ljava/lang/String; = "x-amz-tagging-count"

.field public static final S3_USER_METADATA_PREFIX:Ljava/lang/String; = "x-amz-meta-"

.field public static final S3_VERSION_ID:Ljava/lang/String; = "x-amz-version-id"

.field public static final SECURITY_TOKEN:Ljava/lang/String; = "x-amz-security-token"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SERVER_SIDE_ENCRYPTION:Ljava/lang/String; = "x-amz-server-side-encryption"

.field public static final SERVER_SIDE_ENCRYPTION_CUSTOMER_ALGORITHM:Ljava/lang/String; = "x-amz-server-side-encryption-customer-algorithm"

.field public static final SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY:Ljava/lang/String; = "x-amz-server-side-encryption-customer-key"

.field public static final SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY_MD5:Ljava/lang/String; = "x-amz-server-side-encryption-customer-key-MD5"

.field public static final SERVER_SIDE_ENCRYPTION_KMS_KEY_ID:Ljava/lang/String; = "x-amz-server-side-encryption-aws-kms-key-id"

.field public static final STORAGE_CLASS:Ljava/lang/String; = "x-amz-storage-class"

.field public static final TAGGING_DIRECTIVE:Ljava/lang/String; = "x-amz-tagging-directive"

.field public static final UNENCRYPTED_CONTENT_LENGTH:Ljava/lang/String; = "x-amz-unencrypted-content-length"

.field public static final UNENCRYPTED_CONTENT_MD5:Ljava/lang/String; = "x-amz-unencrypted-content-md5"
